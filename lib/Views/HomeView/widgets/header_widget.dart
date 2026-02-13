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
    final user =
        userState.currentUser; // Get current user (from async or cache)
    final hasUser = userState.hasUser;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Show user info if we have data (from current state or cached)
          if (hasUser && user != null)
            Row(
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
                      child: user.user?.profilePictureUrl != null &&
                              user.user!.profilePictureUrl!.isNotEmpty
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
                      context.t.welcome(name: user.user?.fullName ?? ""),
                      style: AppTextStyles.onboardingBody(
                        15,
                        weight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          greting(),
                          style: AppTextStyles.onboardingBody(
                            15,
                            height: 1,
                            letterSpacing: 0.5,
                            color: AppColors.onboardingButtonGradientStart,
                          ),
                        ),
                        // Show subtle loading indicator if refreshing in background
                        if (userState.isRefreshing) ...[
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 12,
                            height: 12,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.onboardingButtonGradientStart
                                    .withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ],
            )
          // Show loading skeleton only on initial load (no cached data)
          else if (userState.asyncValue.isLoading && !hasUser)
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 80,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ],
            )
          // Show error state with retry button (but keep last known data visible)
          else
            Row(
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
                        14,
                        weight: FontWeight.w400,
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
                            .refreshUser(silent: false);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.refresh,
                            size: 14,
                            color: AppColors.onboardingButtonGradientStart,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Retry',
                            style: AppTextStyles.onboardingBody(
                              12,
                              color: AppColors.onboardingButtonGradientStart,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          Row(
            children: [
              if (user?.user?.isPremium ?? false) ...[
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppIcons.premium2,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "PREMIUM",
                        style: AppTextStyles.onboardingBody(
                          12,
                          weight: FontWeight.w700,
                          color: const Color(0xFFE8A7F2),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
              ],
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
                        //     // offset: const Offset(0, 4),
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
        ],
      ),
    );
  }
}
