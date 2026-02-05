import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/Views/FacialScanView/services/face_detection_service.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class FacePositionSelector extends StatelessWidget {
  const FacePositionSelector({
    super.key,
    required this.currentPosition,
    required this.capturedImages,
    required this.onPositionTap,
    required this.onDeleteImage,
  });

  final FacePosition currentPosition;
  final Map<FacePosition, String?> capturedImages;
  final ValueChanged<FacePosition> onPositionTap;
  final ValueChanged<FacePosition> onDeleteImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: FacePosition.values.map((position) {
        final isActive = position == currentPosition;
        final imagePath = capturedImages[position];
        final hasImage = imagePath != null;

        return GestureDetector(
          onTap: () => onPositionTap(position),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isActive
                              ? AppColors.onboardingPurple
                              : AppColors.border,
                          width: isActive ? 2 : 1,
                        ),
                        color: hasImage ? null : AppColors.onboardingGreyLight,
                      ),
                      child: hasImage
                          ? ClipOval(
                              child: Image.file(
                                File(imagePath),
                                fit: BoxFit.cover,
                                width: 56,
                                height: 56,
                              ),
                            )
                          : Icon(
                              Icons.person_outline,
                              color: AppColors.onboardingGreyText,
                              size: 28,
                            ),
                    ),
                    if (hasImage)
                      Positioned(
                        top: -4,
                        right: -4,
                        child: GestureDetector(
                          onTap: () => onDeleteImage(position),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColors.danger,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5,
                              ),
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  _getLocalizedLabel(context, position),
                  style: AppTextStyles.body(
                    11,
                    weight: isActive ? FontWeight.w600 : FontWeight.w500,
                    color: isActive
                        ? AppColors.onboardingPurple
                        : AppColors.onboardingGreyText,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

String _getLocalizedLabel(BuildContext context, FacePosition position) {
  switch (position) {
    case FacePosition.front:
      return context.t.facialScan.positions.front;
    case FacePosition.left:
      return context.t.facialScan.positions.left;
    case FacePosition.right:
      return context.t.facialScan.positions.right;
  }
}
