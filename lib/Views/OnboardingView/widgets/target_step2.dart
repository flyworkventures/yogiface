import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

import 'chip_button.dart';

class TargetStep2 extends StatelessWidget {
  final ValueNotifier<String?> selectedFaceShape;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const TargetStep2({
    super.key,
    required this.selectedFaceShape,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final faceShapes = [
      context.t.onboarding.heart,
      context.t.onboarding.oval,
      context.t.onboarding.square,
      context.t.onboarding.round,
      context.t.onboarding.diamond,
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: AppPaddings.horizontalPage,
        child: ValueListenableBuilder<String?>(
          valueListenable: selectedFaceShape,
          builder: (context, String? value, _) {
            String imagePath;
            if (value == context.t.onboarding.heart) {
              imagePath = AppImages.kalp;
            } else if (value == context.t.onboarding.oval) {
              imagePath = AppImages.oval;
            } else if (value == context.t.onboarding.square) {
              imagePath = AppImages.kare;
            } else if (value == context.t.onboarding.round) {
              imagePath = AppImages.yuvarlak;
            } else if (value == context.t.onboarding.diamond) {
              imagePath = AppImages.elmas;
            } else {
              imagePath = AppImages.female2;
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: AppSpacing.xl),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    context.t.onboarding.whatFaceShapeAiming,
                    style: AppTextStyles.onboardingBody(
                      24,
                      height: 1.3,
                      weight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: AppSpacing.xxl),
                // Face image placeholder
                Image.asset(
                  imagePath,
                ),
                const SizedBox(height: AppSpacing.xl),
                Wrap(
                  spacing: AppSpacing.sm,
                  runSpacing: AppSpacing.md,
                  alignment: WrapAlignment.center,
                  children: faceShapes.map((shape) {
                    final isSelected = value == shape;
                    return SizedBox(
                      width: (MediaQuery.of(context).size.width -
                              AppPaddings.horizontalPage.horizontal -
                              AppSpacing.sm * 2) /
                          3,
                      child: ChipButton(
                        label: shape,
                        isSelected: isSelected,
                        onTap: () => selectedFaceShape.value = shape,
                      ),
                    );
                  }).toList(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
