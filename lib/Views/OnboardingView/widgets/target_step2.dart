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
    final faceShapesMap = {
      'heart': context.t.onboarding.heart,
      'oval': context.t.onboarding.oval,
      'square': context.t.onboarding.square,
      'round': context.t.onboarding.round,
      'diamond': context.t.onboarding.diamond,
    };

    return SingleChildScrollView(
      child: ValueListenableBuilder<String?>(
        valueListenable: selectedFaceShape,
        builder: (context, String? value, _) {
          String imagePath;
          if (value == 'heart') {
            imagePath = AppImages.kalp;
          } else if (value == 'oval') {
            imagePath = AppImages.oval;
          } else if (value == 'square') {
            imagePath = AppImages.kare;
          } else if (value == 'round') {
            imagePath = AppImages.yuvarlak;
          } else if (value == 'diamond') {
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
                height: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: AppSpacing.xl),
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.md,
                alignment: WrapAlignment.center,
                children: faceShapesMap.entries.map((entry) {
                  final backendValue = entry.key;
                  final displayLabel = entry.value;
                  final isSelected = value == backendValue;

                  return SizedBox(
                    width: (MediaQuery.of(context).size.width -
                            AppPaddings.horizontalPage.horizontal -
                            AppSpacing.sm * 2) /
                        3,
                    child: ChipButton(
                      label: displayLabel,
                      isSelected: isSelected,
                      onTap: () => selectedFaceShape.value = backendValue,
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
