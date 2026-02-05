import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/print.dart';

import 'chip_button.dart';

class TargetStep1 extends StatelessWidget {
  final ValueNotifier<Set<String>> selectedArea;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const TargetStep1({
    super.key,
    required this.selectedArea,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final areasMap = {
      'forehead': context.t.onboarding.forehead,
      'eyes': context.t.onboarding.eyes,
      'nose': context.t.onboarding.nose,
      'cheeks': context.t.onboarding.cheeks,
      'lips': context.t.onboarding.lips,
      'jawline': context.t.onboarding.jawline,
      'neck': context.t.onboarding.neck,
    };

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: AppSpacing.xl),
          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.whichAreaToImprove,
              style: AppTextStyles.onboardingBody(
                24,
                height: 1.3,
                weight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          Stack(
            children: [
              Image.asset(AppImages.yuz),
              Positioned.fill(
                left: 45,
                top: 35,
                child: ValueListenableBuilder<Set<String>>(
                  valueListenable: selectedArea,
                  builder: (context, selectedAreas, child) {
                    Print.info('Selected areas: $selectedAreas');

                    // Map to store area keys and their corresponding images
                    final areaImages = {
                      'forehead': AppImages.alin,
                      'eyes': AppImages.goz,
                      'cheeks': AppImages.yanak,
                      'lips': AppImages.dudak,
                      'nose': AppImages.burun,
                      'jawline': AppImages.cene,
                      'neck': AppImages.boyun,
                    };

                    // If no areas selected, return empty container
                    if (selectedAreas.isEmpty) {
                      return const SizedBox.shrink();
                    }

                    // Stack all selected area images
                    return Stack(
                      children: selectedAreas.map((area) {
                        final imagePath = areaImages[area];
                        if (imagePath != null) {
                          return Image.asset(imagePath);
                        }
                        return const SizedBox.shrink();
                      }).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.md,
            alignment: WrapAlignment.center,
            children: areasMap.entries.map((entry) {
              final backendValue = entry.key;
              final displayLabel = entry.value;
              final isSelected = selectedArea.value.contains(backendValue);

              return SizedBox(
                width: (MediaQuery.of(context).size.width -
                        AppPaddings.horizontalPage.horizontal -
                        AppSpacing.sm * 2) /
                    3,
                child: ChipButton(
                  label: displayLabel,
                  isSelected: isSelected,
                  onTap: () {
                    final updatedSet = Set<String>.from(selectedArea.value);
                    if (updatedSet.contains(backendValue)) {
                      updatedSet.remove(backendValue);
                    } else {
                      updatedSet.add(backendValue);
                    }
                    selectedArea.value = updatedSet;
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
