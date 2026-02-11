import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/Views/FacialScanView/services/face_detection_service.dart';
import 'package:yogiface/Views/FacialScanView/widgets/face_position_selector.dart';
import 'package:yogiface/Views/FacialScanView/widgets/photo_capture_widget.dart';
import 'package:yogiface/Views/FacialScanView/widgets/step_indicator_widget.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class CaptureScreen extends StatelessWidget {
  const CaptureScreen({
    super.key,
    required this.currentStep,
    required this.currentPosition,
    required this.capturedImages,
    required this.isLoading,
    required this.errorMessage,
    required this.onPositionTap,
    required this.onCapturePressed,
    required this.onGetStarted,
    required this.onDeleteImage,
    this.onSkipToResult, // DEBUG: Optional skip button
  });

  final int currentStep;
  final FacePosition currentPosition;
  final Map<FacePosition, String?> capturedImages;
  final bool isLoading;
  final String? errorMessage;
  final ValueChanged<FacePosition> onPositionTap;
  final VoidCallback onCapturePressed;
  final VoidCallback onGetStarted;
  final ValueChanged<FacePosition> onDeleteImage;
  final VoidCallback? onSkipToResult; // DEBUG: Optional skip to result

  bool get hasAnyCapturedImage =>
      capturedImages.values.any((path) => path != null);

  bool get allImagesCaptured =>
      capturedImages.values.every((path) => path != null);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.arrow_back, size: 24),
                ),
                const SizedBox(width: 16),
                Text(
                  context.t.facialScan.title,
                  style: AppTextStyles.heading(18, FontWeight.w600),
                ),
                const Spacer(),
                // DEBUG: Skip to result button
                if (onSkipToResult != null)
                  GestureDetector(
                    onTap: onSkipToResult,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.orange,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.skip_next,
                            size: 16,
                            color: Colors.orange[800],
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'DEBUG',
                            style: AppTextStyles.body(
                              11,
                              color: Colors.orange[800],
                              weight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 24),
            StepIndicatorWidget(
              currentStep: currentStep,
              totalSteps: 3,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: PhotoCaptureWidget(
                imagePath: capturedImages[currentPosition],
                onCapturePressed: onCapturePressed,
                isLoading: isLoading,
                instructionTitle: _getInstructionTitle(context),
                instructionSubtitle: context.t.facialScan.instructions.lighting,
                frontFaceImagePath: capturedImages[FacePosition.front],
              ),
            ),
            if (errorMessage != null) ...[
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.danger.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: AppColors.danger,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        errorMessage!,
                        style: AppTextStyles.body(
                          13,
                          color: AppColors.danger,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 24),
            FacePositionSelector(
              currentPosition: currentPosition,
              capturedImages: capturedImages,
              onPositionTap: onPositionTap,
              onDeleteImage: onDeleteImage,
            ),
            const SizedBox(height: 24),
            if (allImagesCaptured) ...[
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  label: context.t.facialScan.getStarted,
                  onPressed: onGetStarted,
                  fullWidth: true,
                  size: CustomButtonSize.large,
                  gradientColors: const [
                    AppColors.onboardingButtonGradientStart,
                    AppColors.onboardingButtonGradientEnd,
                  ],
                  labelColor: Colors.white,
                ),
              ),
            ] else ...[
              GestureDetector(
                onTap: isLoading ? null : onCapturePressed,
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.onboardingButtonGradientStart,
                        AppColors.onboardingButtonGradientEnd,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            AppColors.onboardingPurple.withValues(alpha: 0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: isLoading
                      ? const Center(
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          ),
                        )
                      : const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                          size: 32,
                        ),
                ),
              ),
            ],
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  String _getInstructionTitle(BuildContext context) {
    switch (currentPosition) {
      case FacePosition.front:
        return context.t.facialScan.instructions.front;
      case FacePosition.left:
        return context.t.facialScan.instructions.left;
      case FacePosition.right:
        return context.t.facialScan.instructions.right;
    }
  }
}
