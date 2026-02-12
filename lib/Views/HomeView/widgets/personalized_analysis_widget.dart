import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class PersonalizedAnalysisWidget extends ConsumerWidget {
  const PersonalizedAnalysisWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPremiumRevenueCat = ref.watch(AllProviders.premiumProvider);
    final userState = ref.watch(AllProviders.userProvider);
    final isPremiumUser = userState.currentUser?.user?.isPremium ?? false;
    final isPremium = isPremiumRevenueCat || isPremiumUser;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        width: double.infinity,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          // boxShadow: [
          //   BoxShadow(
          //     color: AppColors.boxShadowColor,
          //     blurRadius: 1,
          //     offset: const Offset(0, 1),
          //   ),
          // ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage(AppImages.facialanalys),
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.t.home.personalized.title,
                style: AppTextStyles.onboardingBody(
                  18,
                  height: 1.2,
                  weight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                context.t.home.personalized.description,
                style: AppTextStyles.onboardingBody(12,
                    weight: FontWeight.w500, height: 1.4),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  if (!isPremium) {
                    try {
                      await RevenueCatUI.presentPaywall();
                    } catch (e) {
                      debugPrint('Error presenting paywall: $e');
                    }
                  } else {
                    Navigator.pushNamed(context, '/facial-scan');
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: isPremium
                          ? [
                              const Color(0xFFD4A5FF),
                              const Color(0xFFB57EDC),
                            ]
                          : [
                              Colors.grey.shade400,
                              Colors.grey.shade600,
                            ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!isPremium) ...[
                        const Icon(
                          Icons.lock,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        context.t.home.personalized.button,
                        style: AppTextStyles.onboardingBody(
                          14,
                          color: AppColors.backgroundLight,
                          weight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
