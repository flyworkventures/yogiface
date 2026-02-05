import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/extension.dart';

class FinalScreen extends HookWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Breathing animation for all elements
    final breathingController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    final breathingScale = useMemoized(
      () => Tween<double>(begin: 0.95, end: 1.05).animate(
        CurvedAnimation(
          parent: breathingController,
          curve: Curves.easeInOut,
        ),
      ),
      [breathingController],
    );

    // Stronger breathing for background circle
    final backgroundBreathingScale = useMemoized(
      () => Tween<double>(begin: 0.90, end: 1.10).animate(
        CurvedAnimation(
          parent: breathingController,
          curve: Curves.easeInOut,
        ),
      ),
      [breathingController],
    );

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.xl),

          // Kadın fotoğrafı
          Container(
            height: context.height * 0.28,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.female3),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),

          // Başlık
          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.creatingPersonalizedProfile,
              style: AppTextStyles.onboardingBody(
                24,
                height: 1,
                weight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),

          // Alt metin
          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.tailoringExperience,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                18,
                height: 1,
                weight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: context.height * 0.03),

          // İkon grubu - Breathing animation
          LayoutBuilder(
            builder: (context, constraints) {
              final iconGroupSize = constraints.maxWidth * 0.55;
              final iconSize = iconGroupSize * 0.30;

              return Center(
                child: SizedBox(
                  width: iconGroupSize.clamp(180.0, 220.0),
                  height: iconGroupSize.clamp(180.0, 220.0),
                  child: AnimatedBuilder(
                    animation: breathingController,
                    builder: (context, child) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          // Arka plan mor daire - Breathing animation
                          Transform.scale(
                            scale: backgroundBreathingScale.value,
                            child: Image.asset(
                              AppIcons.circlebackground,
                              width: iconGroupSize.clamp(180.0, 220.0),
                              height: iconGroupSize.clamp(180.0, 220.0),
                              fit: BoxFit.contain,
                            ),
                          ),

                          // İkonlar - Breathing animation
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Heart Icon
                              Transform.scale(
                                scale: breathingScale.value,
                                child: Image.asset(
                                  AppIcons.heart,
                                  width: iconSize.clamp(50.0, 69.0),
                                  height: iconSize.clamp(50.0, 68.0),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: iconGroupSize * 0.035),
                              // Profile Icon
                              Transform.scale(
                                scale: breathingScale.value,
                                child: Image.asset(
                                  AppIcons.profile,
                                  width: iconSize.clamp(50.0, 69.0),
                                  height: iconSize.clamp(50.0, 68.0),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: iconGroupSize * 0.035),
                              // Setting Icon
                              Transform.scale(
                                scale: breathingScale.value,
                                child: Image.asset(
                                  AppIcons.setting,
                                  width: iconSize.clamp(50.0, 69.0),
                                  height: iconSize.clamp(50.0, 68.0),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
