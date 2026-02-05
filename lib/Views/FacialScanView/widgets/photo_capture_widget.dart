import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_border_radius.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class PhotoCaptureWidget extends StatelessWidget {
  const PhotoCaptureWidget({
    super.key,
    required this.imagePath,
    required this.onCapturePressed,
    required this.isLoading,
    this.instructionTitle,
    this.instructionSubtitle,
    this.frontFaceImagePath,
  });

  final String? imagePath;
  final VoidCallback onCapturePressed;
  final bool isLoading;
  final String? instructionTitle;
  final String? instructionSubtitle;
  final String? frontFaceImagePath;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              color: AppColors.onboardingGreyLight,
              borderRadius: AppBorderRadius.lgRadius,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: AppBorderRadius.lgRadius,
              child: imagePath != null
                  ? Image.file(
                      File(imagePath!),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 280,
                    )
                  : Stack(
                      children: [
                        if (frontFaceImagePath != null)
                          Positioned.fill(
                            child: Opacity(
                              opacity: 0.15,
                              child: Image.file(
                                File(frontFaceImagePath!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                size: 64,
                                color: AppColors.onboardingGreyText,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                context.t.facialScan.instructions.tapToCapture,
                                style: AppTextStyles.body(
                                  14,
                                  color: AppColors.onboardingGreyText,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            instructionTitle ?? context.t.facialScan.instructions.front,
            style: AppTextStyles.heading(
              18,
              FontWeight.w600,
              color: AppColors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              instructionSubtitle ?? context.t.facialScan.instructions.lighting,
              style: AppTextStyles.body(
                14,
                color: AppColors.onboardingGreyText,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
