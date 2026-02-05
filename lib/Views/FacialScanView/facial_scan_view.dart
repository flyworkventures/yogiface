import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/Views/FacialScanView/services/face_detection_service.dart';
import 'package:yogiface/Views/FacialScanView/widgets/analysis_result_screen.dart';
import 'package:yogiface/Views/FacialScanView/widgets/analyzing_screen.dart';
import 'package:yogiface/Views/FacialScanView/widgets/capture_screen.dart';

enum FacialScanState {
  capture,
  analyzing,
  result,
}

class FacialScanView extends HookWidget {
  const FacialScanView({super.key});

  @override
  Widget build(BuildContext context) {
    final scanState = useState(FacialScanState.capture);
    final currentPosition = useState(FacePosition.front);
    final capturedImages = useState<Map<FacePosition, String?>>({
      FacePosition.front: null,
      FacePosition.left: null,
      FacePosition.right: null,
    });
    final isLoading = useState(false);
    final analyzeProgress = useState(0.0);
    final errorMessage = useState<String?>(null);

    final imagePicker = useMemoized(() => ImagePicker());

    final faceDetectionService =
        useMemoized(() => FaceDetectionService.instance);
    int getCurrentStep() {
      final images = capturedImages.value;
      if (images[FacePosition.front] == null) return 1;
      if (images[FacePosition.left] == null) return 2;
      if (images[FacePosition.right] == null) return 3;
      return 3;
    }

    void startAnalysis() {
      scanState.value = FacialScanState.analyzing;
      analyzeProgress.value = 0.0;

      Timer.periodic(const Duration(milliseconds: 100), (timer) {
        if (analyzeProgress.value >= 1.0) {
          timer.cancel();
          scanState.value = FacialScanState.result;
        } else {
          analyzeProgress.value += 0.01; // Slower progress
        }
      });
    }

    Future<void> handleCapture() async {
      isLoading.value = true;
      errorMessage.value = null;

      try {
        final cameraStatus = await Permission.camera.request();

        if (!cameraStatus.isGranted) {
          errorMessage.value = context.t.facialScan.errors.cameraPermission;
          isLoading.value = false;

          if (cameraStatus.isPermanentlyDenied) {
            final shouldOpenSettings = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title:
                    Text(context.t.facialScan.errors.cameraPermissionRequired),
                content: Text(
                  context.t.facialScan.errors.cameraPermissionMessage,
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text(context.t.facialScan.errors.cancel),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text(context.t.facialScan.errors.openSettings),
                  ),
                ],
              ),
            );

            if (shouldOpenSettings == true) {
              await openAppSettings();
            }
          }
          return;
        }

        final XFile? image = await imagePicker.pickImage(
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.front,
          imageQuality: 85,
        );

        if (image == null) {
          isLoading.value = false;
          return;
        }

        final hasFace = await faceDetectionService.hasFace(image.path);

        if (!hasFace) {
          errorMessage.value = context.t.facialScan.errors.noFaceDetected;
          isLoading.value = false;
          return;
        }

        final newImages = Map<FacePosition, String?>.from(capturedImages.value);
        newImages[currentPosition.value] = image.path;
        capturedImages.value = newImages;
        final allCaptured = newImages[FacePosition.front] != null &&
            newImages[FacePosition.left] != null &&
            newImages[FacePosition.right] != null;

        if (allCaptured) {
          startAnalysis();
        } else {
          if (currentPosition.value == FacePosition.front) {
            currentPosition.value = FacePosition.left;
          } else if (currentPosition.value == FacePosition.left) {
            currentPosition.value = FacePosition.right;
          }
        }
      } catch (e) {
        errorMessage.value = context.t.facialScan.errors.captureFailed;
      } finally {
        isLoading.value = false;
      }
    }

    // Handle position tap
    void handlePositionTap(FacePosition position) {
      currentPosition.value = position;
    }

    // Handle delete image
    void handleDeleteImage(FacePosition position) {
      final newImages = Map<FacePosition, String?>.from(capturedImages.value);
      newImages[position] = null;
      capturedImages.value = newImages;

      // Clear error message
      errorMessage.value = null;

      currentPosition.value = position;
    }

    void handleBackFromResult() {
      Navigator.of(context).pop();
    }

    switch (scanState.value) {
      case FacialScanState.capture:
        return Scaffold(
          backgroundColor: Colors.white,
          body: CaptureScreen(
            currentStep: getCurrentStep(),
            currentPosition: currentPosition.value,
            capturedImages: capturedImages.value,
            isLoading: isLoading.value,
            errorMessage: errorMessage.value,
            onPositionTap: handlePositionTap,
            onCapturePressed: handleCapture,
            onDeleteImage: handleDeleteImage,
            onGetStarted: startAnalysis,
          ),
        );
      case FacialScanState.analyzing:
        return Scaffold(
          backgroundColor: Colors.white,
          body: AnalyzingScreen(
            progress: analyzeProgress.value,
            frontFaceImagePath: capturedImages.value[FacePosition.front],
          ),
        );
      case FacialScanState.result:
        return Scaffold(
          backgroundColor: Colors.white,
          body: AnalysisResultScreen(
            profileImagePath: capturedImages.value[FacePosition.front],
            skinType: 'Balanced / Oily',
            primaryGoal: 'Forehead Smoothing',
            onBackPressed: handleBackFromResult,
            recommendedExercise: RecommendedExercise(
              title: 'The "V" Move',
              description:
                  'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.',
            ),
          ),
        );
    }
  }
}
