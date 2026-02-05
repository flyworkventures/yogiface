import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/OnboardingView/widgets/chip_button.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/utils/app_assets.dart';

class FocusareaBottomsheet extends HookWidget {
  final Set<String> initialValues;
  final Function(Set<String>) onSelected;

  const FocusareaBottomsheet({
    super.key,
    this.initialValues = const {},
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    // Map backend values to display labels
    final areasMap = {
      'forehead': context.t.onboarding.forehead,
      'eyes': context.t.onboarding.eyes,
      'nose': context.t.onboarding.nose,
      'cheeks': context.t.onboarding.cheeks,
      'lips': context.t.onboarding.lips,
      'jawline': context.t.onboarding.jawline,
      'neck': context.t.onboarding.neck,
    };

    final selectedAreas = useState<Set<String>>(initialValues);

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Face image with overlays
                Stack(
                  children: [
                    Image.asset(AppImages.yuz),
                    Positioned.fill(
                      left: 45,
                      top: 35,
                      child: ValueListenableBuilder<Set<String>>(
                        valueListenable: selectedAreas,
                        builder: (context, selectedAreasValue, child) {
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
                          if (selectedAreasValue.isEmpty) {
                            return const SizedBox.shrink();
                          }

                          // Stack all selected area images
                          return Stack(
                            children: selectedAreasValue.map((area) {
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
                // Convert map to list for iteration
                for (int rowIndex = 0;
                    rowIndex < (areasMap.length / 3).ceil();
                    rowIndex++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Builder(
                      builder: (context) {
                        final entries = areasMap.entries.toList();
                        final startIndex = rowIndex * 3;
                        final endIndex =
                            (startIndex + 3).clamp(0, entries.length);
                        final rowItems = entries.sublist(startIndex, endIndex);
                        final isLastRow =
                            rowIndex == (entries.length / 3).ceil() - 1;
                        final hasIncompleteRow = entries.length % 3 != 0;

                        return Row(
                          mainAxisAlignment: (isLastRow && hasIncompleteRow)
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.spaceEvenly,
                          children: rowItems.map((entry) {
                            final backendValue = entry.key;
                            final displayLabel = entry.value;
                            final isSelected =
                                selectedAreas.value.contains(backendValue);

                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: ChipButton(
                                label: displayLabel,
                                isSelected: isSelected,
                                onTap: () {
                                  final updatedSet =
                                      Set<String>.from(selectedAreas.value);
                                  if (updatedSet.contains(backendValue)) {
                                    updatedSet.remove(backendValue);
                                  } else {
                                    updatedSet.add(backendValue);
                                  }
                                  selectedAreas.value = updatedSet;
                                },
                              ),
                            );
                          }).toList(),
                        );
                      },
                    ),
                  ),
                const SizedBox(height: AppSpacing.xl),
                CustomButton(
                  label: context.t.editProfile.save,
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  foregroundColor: AppColors.onboardingButtonGradientStart,
                  backgroundColor: AppColors.onboardingButtonGradientStart,
                  labelColor: Colors.white,
                  onPressed: () {
                    onSelected(selectedAreas.value);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
