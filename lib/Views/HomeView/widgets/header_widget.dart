import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Riverpod/Providers/notification_provider.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class HeaderWidget extends ConsumerStatefulWidget {
  const HeaderWidget({super.key});

  @override
  ConsumerState<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends ConsumerState<HeaderWidget> {
  @override
  void initState() {
    super.initState();
    // Force refresh unread count when widget mounts
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.invalidate(unreadCountProvider);
    });
  }

  @override
  Widget build(BuildContext context) {
    String greting() {
      var hour = DateTime.now().hour;
      if (hour < 12) {
        return context.t.good_morning;
      } else if (hour < 17) {
        return context.t.good_afternoon;
      } else {
        return context.t.good_evening;
      }
    }

    final userState = ref.watch(AllProviders.userProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          userState.when(data: (user) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFE0D4F7), // Açık mor border
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: user?.user?.profilePictureUrl != null &&
                              user!.user!.profilePictureUrl!.isNotEmpty
                          ? Image.network(
                              user.user!.profilePictureUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.asset(AppImages.profilephoto);
                              },
                            )
                          : Image.asset(
                              AppImages.profilephoto,
                            ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.t.welcome(name: user?.user?.fullName ?? ""),
                      style: AppTextStyles.onboardingBody(
                        18,
                        weight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      greting(),
                      style: AppTextStyles.onboardingBody(
                        18,
                        height: 1,
                        letterSpacing: 0.5,
                        color: AppColors.onboardingButtonGradientStart,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }, error: (Object error, StackTrace stackTrace) {
            // Log the error for debugging
            debugPrint('HeaderWidget: User fetch error - $error');

            // Provide a graceful fallback UI with retry option
            return Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFE0D4F7),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(AppImages.profilephoto),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.t.welcome(name: ""),
                      style: AppTextStyles.onboardingBody(
                        18,
                        weight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                        // Retry fetching user data
                        ref
                            .read(AllProviders.userProvider.notifier)
                            .refreshUser();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.refresh,
                            size: 14,
                            color: AppColors.onboardingButtonGradientStart,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          }, loading: () {
            return const SizedBox.shrink();
          }),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/notifications');
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: AppColors.boxShadowColor,
                    //     blurRadius: 4,
                    //     offset: const Offset(0, 4),
                    //   ),
                    // ],
                  ),
                  child: Center(
                    child: Image.asset(
                      AppIcons.notifications,
                    ),
                  ),
                ),
                // Unread count badge
                Consumer(
                  builder: (context, ref, child) {
                    final unreadCountAsync = ref.watch(unreadCountProvider);

                    return unreadCountAsync.when(
                      data: (count) {
                        if (count == 0) return const SizedBox.shrink();

                        return Positioned(
                          right: -2,
                          top: -2,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 18,
                              minHeight: 18,
                            ),
                            child: Text(
                              count > 99 ? '99+' : count.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      },
                      loading: () => const SizedBox.shrink(),
                      error: (_, __) => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
