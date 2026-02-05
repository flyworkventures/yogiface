import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/utils/app_assets.dart';

import 'widgets/index.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(AllProviders.userProvider);
    final notificationsEnabled = useState(true);
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
                  // Profile Header
                  user.when(
                    data: (data) => Center(
                      child: ProfileHeader(
                        userName: data!.user!.fullName ?? '',
                        versionText: context.t.profile.freeVersion,
                        profileImage:
                            NetworkImage(data.user!.profilePictureUrl ?? ''),
                        onTap: () {},
                      ),
                    ),
                    error: (error, stackTrace) => Center(
                      child: Text(context.t.profile.error),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
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
                        isToggled: notificationsEnabled.value,
                        onToggleChanged: (value) {
                          notificationsEnabled.value = value;
                        },
                      ),
                      const SizedBox(height: 12),
                      ProfileMenuItem(
                        icon: AppIcons.premiumaward,
                        title: context.t.profile.menu.premium,
                        iconBackgroundColor: const Color(0xFFFFB300),
                        isHighlighted: true,
                        onTap: () {
                          // TODO: Navigate to premium
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
                      ProfileMenuItem(
                        icon: AppIcons.like,
                        title: context.t.profile.menu.rateUs,
                        iconBackgroundColor: const Color(0xFFFFB300),
                        onTap: () {
                          // TODO: Rate app
                        },
                      ),
                      const SizedBox(height: 12),
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
