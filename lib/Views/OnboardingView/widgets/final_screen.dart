import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/extension.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

          // İkon grubu
          LayoutBuilder(
            builder: (context, constraints) {
              final iconGroupSize = constraints.maxWidth * 0.55;
              final iconSize = iconGroupSize * 0.30;

              return Center(
                child: SizedBox(
                  width: iconGroupSize.clamp(180.0, 220.0),
                  height: iconGroupSize.clamp(180.0, 220.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Arka plan mor daire
                      Image.asset(
                        AppIcons.circlebackground,
                        width: iconGroupSize.clamp(180.0, 220.0),
                        height: iconGroupSize.clamp(180.0, 220.0),
                        fit: BoxFit.contain,
                      ),
                      // İkonlar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppIcons.heart,
                            width: iconSize.clamp(50.0, 69.0),
                            height: iconSize.clamp(50.0, 68.0),
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: iconGroupSize * 0.035),
                          Image.asset(
                            AppIcons.profile,
                            width: iconSize.clamp(50.0, 69.0),
                            height: iconSize.clamp(50.0, 68.0),
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: iconGroupSize * 0.035),
                          Image.asset(
                            AppIcons.setting,
                            width: iconSize.clamp(50.0, 69.0),
                            height: iconSize.clamp(50.0, 68.0),
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
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
