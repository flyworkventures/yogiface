import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

import 'widgets/index.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(AllProviders.userProvider);
    final notificationsEnabled = useState<bool?>(null);

    // Initialize notification toggle based on stored player id or pending pref
    useEffect(() {
      Future<void> init() async {
        final storage = ref.read(AllProviders.secureStorageServiceProvider);
        final pendingPref = await storage.getPendingNotificationPref();
        if (pendingPref != null) {
          notificationsEnabled.value = pendingPref;
          return;
        }

        final storedId = await storage.getOneSignalPlayerId();
        notificationsEnabled.value = storedId != null && storedId.isNotEmpty;
      }

      init();
      return null;
    }, []);

    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(1.0, -1.0), // top-right corner
          radius: 1.2,
          colors: [
            Color(0xFFE8A7F2), // pink
            Colors.white,
          ],
        ),
      ),
      child: Padding(
        padding: AppPaddings.horizontalPage,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppPaddings.large ?? 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      context.t.profile.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Profile Header with defensive null handling
                  Builder(
                    builder: (context) {
                      final authResponse = user.currentUser;
                      final userData = authResponse?.user;

                      // Show loading only if no cached data exists
                      if (!user.hasUser && user.asyncValue.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      // Show error if no user data available
                      if (userData == null) {
                        return Center(
                          child: Column(
                            children: [
                              Text(context.t.profile.error),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  ref
                                      .read(AllProviders.userProvider.notifier)
                                      .refreshUser(silent: false);
                                },
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                        );
                      }

                      // Show user data with subtle refresh indicator
                      return Stack(
                        children: [
                          Center(
                            child: ProfileHeader(
                              userName: userData.fullName ?? '',
                              versionText: userData.isPremium
                                  ? context.t.profile.premiumVersion
                                  : context.t.profile.freeVersion,
                              profileImage: NetworkImage(
                                  userData.profilePictureUrl ?? ''),
                              onTap: () {},
                            ),
                          ),
                          // Show subtle loading indicator during background refresh
                          if (user.isRefreshing)
                            Positioned(
                              top: 0,
                              right: 0,
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 32),

                  // Hesap Ayarları Section
                  ProfileSection(
                    title: context.t.profile.sections.accountSettings,
                    children: [
                      ProfileMenuItem(
                        icon: AppIcons.useredit,
                        title: context.t.profile.menu.editProfile,
                        iconBackgroundColor: const Color(0xFF9B59B6),
                        onTap: () {
                          Navigator.pushNamed(context, '/edit-profile');
                        },
                      ),
                      const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.notificationpurple,
                        title: context.t.profile.menu.notifications,
                        iconBackgroundColor: const Color(0xFF9B59B6),
                        isToggled: notificationsEnabled.value ?? true,
                        onToggleChanged: (value) async {
                          notificationsEnabled.value = value;

                          final userNotifier =
                              ref.read(AllProviders.userProvider.notifier);
                          final storage = ref
                              .read(AllProviders.secureStorageServiceProvider);

                          if (value) {
                            // Enable notifications: try to get current OneSignal id
                            try {
                              final id = OneSignal.User.pushSubscription.id;
                              final isOptedIn =
                                  OneSignal.User.pushSubscription.optedIn;

                              if (id != null &&
                                  id.isNotEmpty &&
                                  isOptedIn == true) {
                                await userNotifier.saveOneSignalId(id);
                                Print.info(
                                    'OneSignal id saved: $id (subscribed)');
                              } else if (id != null && isOptedIn != true) {
                                Print.info(
                                    'OneSignal ID exists but user not subscribed');
                                // Save pending pref - will be processed when user grants permission
                                await storage.savePendingNotificationPref(true);
                              } else {
                                // No id available yet - save pending pref so it will be processed later
                                await storage.savePendingNotificationPref(true);
                                Print.info(
                                    'No OneSignal id available - saved pending notification pref');
                              }
                            } catch (e) {
                              // Fallback: save pending pref
                              await storage.savePendingNotificationPref(true);
                              Print.error('Error retrieving OneSignal id: $e');
                            }
                          } else {
                            // Disable notifications
                            await userNotifier.disableNotifications();
                          }
                        },
                      ),
                      const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.premiumaward,
                        title: context.t.profile.menu.premium,
                        iconBackgroundColor: const Color(0xFFFFB300),
                        isHighlighted: true,
                        onTap: () async {
                          try {
                            // Show loading indicator or similar if needed while fetching
                            final offerings = await Purchases.getOfferings();
                            if (offerings.current != null && context.mounted) {
                              final paywallResult =
                                  await RevenueCatUI.presentPaywall(
                                      offering: offerings.current);

                              if (paywallResult == PaywallResult.purchased) {
                                // Force refresh of premium status
                                await ref
                                    .read(AllProviders.premiumProvider.notifier)
                                    .refreshCustomerInfo();
                              }
                            }
                          } catch (e) {
                            Print.error('Error presenting paywall: $e');
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),

                  // Destek & Diğer Section
                  ProfileSection(
                    title: context.t.profile.sections.supportAndOther,
                    children: [
                      ProfileMenuItem(
                        icon: AppIcons.heart2,
                        title: context.t.profile.menu.favoriteExercises,
                        iconBackgroundColor: const Color(0xFFE91E63),
                        onTap: () {
                          Navigator.pushNamed(context, '/favorite-exercises');
                        },
                      ),
                      const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.flag,
                        title: context.t.profile.menu.appLanguage,
                        iconBackgroundColor: const Color(0xFF9B59B6),
                        onTap: () {
                          Navigator.pushNamed(context, '/language');
                        },
                      ),
                      const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.clipgroup,
                        title: context.t.profile.menu.shareWithFriends,
                        iconBackgroundColor: const Color(0xFF26A69A),
                        onTap: () {
                          Navigator.pushNamed(context, '/share-friends');
                        },
                      ),
                      const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.qr,
                        title: context.t.profile.menu.enterInviteCode,
                        iconBackgroundColor: const Color(0xFF9B59B6),
                        onTap: () {
                          Navigator.pushNamed(context, '/invitation-code');
                        },
                      ),
                      const SizedBox(height: 12),
                      // ProfileMenuItem(
                      //   icon: AppIcons.like,
                      //   title: context.t.profile.menu.rateUs,
                      //   iconBackgroundColor: const Color(0xFFFFB300),
                      //   onTap: () {
                      //     // TODO: Rate app
                      //   },
                      // ),
                      // const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.questionmark,
                        title: context.t.profile.menu.faq,
                        iconBackgroundColor: const Color(0xFF9B59B6),
                        onTap: () {
                          Navigator.pushNamed(context, '/faq');
                        },
                      ),
                      const SizedBox(height: 12),
                      SafeArea(
                        child: ProfileMenuItem(
                          icon: AppIcons.logout,
                          title: context.t.profile.menu.logout,
                          isRed: true,
                          iconBackgroundColor: const Color(0xFFE91E63),
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierColor: Colors.black.withValues(alpha: 0.3),
                              builder: (context) => BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: const LogoutDialog(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
