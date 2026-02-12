import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:yogiface/Models/auth_model.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/FacialScanView/services/face_detection_service.dart';
import 'package:yogiface/Views/FacialScanView/widgets/analysis_result_screen.dart';
import 'package:yogiface/Views/FacialScanView/widgets/analyzing_screen.dart';
import 'package:yogiface/Views/FacialScanView/widgets/capture_screen.dart';

enum FacialScanState {
  capture,
  analyzing,
  result,
}

class FacialScanView extends HookConsumerWidget {
  const FacialScanView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    final recommendations = useState<List<Exercise>?>([]);

    final imagePicker = useMemoized(() => ImagePicker());

    // Get the current locale for API calls
    final currentLocale = LocaleSettings.currentLocale;

    // Get exercise repository
    final exerciseRepository =
        ref.watch(AllProviders.exerciseRepositoryProvider);

    final faceDetectionService =
        useMemoized(() => FaceDetectionService.instance);
    int getCurrentStep() {
      final images = capturedImages.value;
      if (images[FacePosition.front] == null) return 1;
      if (images[FacePosition.left] == null) return 2;
      if (images[FacePosition.right] == null) return 3;
      return 3;
    }

    // DEBUG: Skip directly to results for testing
    Future<void> skipToResult() async {
      // Fetch recommendations
      try {
        final result = await exerciseRepository.getRecommendations(
          lang: currentLocale.languageCode,
          limit: 5,
          minScore: 0,
        );
        recommendations.value = result;
        print('✅ DEBUG: Fetched ${result.length} recommendations');
        print('📋 Exercise Names:');
        for (var i = 0; i < result.length; i++) {
          print(
              '   ${i + 1}. ${result[i].title} (score: ${result[i].recommendationScore})');
        }
      } catch (e) {
        print('❌ DEBUG: Error fetching recommendations: $e');
        recommendations.value = [];
      }
      // Skip to result screen
      scanState.value = FacialScanState.result;
    }

    Future<void> startAnalysis() async {
      scanState.value = FacialScanState.analyzing;
      analyzeProgress.value = 0.0;

      // Fetch recommendations while showing progress
      exerciseRepository
          .getRecommendations(
        lang: currentLocale.languageCode,
        limit: 5,
        minScore: 0,
      )
          .then((result) {
        recommendations.value = result;
        print('✅ Fetched ${result.length} recommendations in facial scan');
        if (result.isNotEmpty) {
          print('📋 All Exercise Names:');
          for (var i = 0; i < result.length; i++) {
            print(
                '   ${i + 1}. ${result[i].title} (score: ${result[i].recommendationScore})');
          }
        }
      }).catchError((e) {
        print('❌ Error fetching recommendations: $e');
        recommendations.value = [];
      });

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
          await startAnalysis();
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

    // Get user profile data
    final userState = ref.watch(AllProviders.userProvider);
    final userProfile = userState.value?.profile;

    // Map skinType to localized format
    String getSkinTypeDisplay(BuildContext context, String? skinType) {
      if (skinType == null) return 'Unknown'; // TODO: Add translation key
      final skinTypesMap = {
        'normal': context.t.onboarding.normal,
        'oily': context.t.onboarding.oily,
        'dry': context.t.onboarding.dry,
        'combination': context.t.onboarding.combination,
        'sensitive': context.t.onboarding.sensitive,
      };
      return skinTypesMap[skinType.toLowerCase()] ?? skinType;
    }

    // Map objectives/improvementAreas to localized format for primary goal
    String getPrimaryGoalDisplay(BuildContext context, UserProfile? profile) {
      if (profile == null)
        return 'Overall Wellness'; // TODO: Add translation key

      // Priority: objectives > improvementAreas > skinConcerns
      if (profile.objectives.isNotEmpty) {
        final objective = profile.objectives.first;
        final objectivesMap = {
          'reduce_wrinkles': context.t.onboarding.reduceWrinkles,
          'tighten_skin': context.t.onboarding.tightenSkin,
          'lift_eyelids': context.t.onboarding.liftDroopyEyelids,
          'eliminate_double_chin': context.t.onboarding.eliminateDoubleChin,
          'brighten_tone': context.t.onboarding.brightenSkinTone,
        };
        return objectivesMap[objective] ?? objective;
      }

      if (profile.improvementAreas.isNotEmpty) {
        final area = profile.improvementAreas.first;
        final areasMap = {
          'forehead': context.t.onboarding.forehead,
          'eyes': context.t.onboarding.eyes,
          'nose': context.t.onboarding.nose,
          'cheeks': context.t.onboarding.cheeks,
          'lips': context.t.onboarding.lips,
          'jawline': context.t.onboarding.jawline,
          'neck': context.t.onboarding.neck,
        };
        return areasMap[area] ?? area;
      }

      if (profile.skinConcerns.isNotEmpty) {
        final concern = profile.skinConcerns.first;
        final concernsMap = {
          'acne': context.t.onboarding.acneAndPimples,
          'redness': context.t.onboarding.redness,
          'swelling': context.t.onboarding.swelling,
          'wrinkles': context.t.onboarding.wrinkles,
          'neck_lines': context.t.onboarding.neckLines,
        };
        return concernsMap[concern] ?? concern;
      }

      return 'Overall Wellness'; // TODO: Add translation key
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
            onSkipToResult: skipToResult, // DEBUG: Skip button callback
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
        print(
            '📊 RESULT SCREEN - Recommendations count: ${recommendations.value?.length ?? 0}');
        if (recommendations.value != null &&
            recommendations.value!.isNotEmpty) {
          print(
              '📊 First recommendation: ${recommendations.value!.first.title}');
          // Convert to JSON for better readability
          final recommendationsJson =
              recommendations.value!.map((e) => e.toJson()).toList();
          print('📊 Full recommendations (JSON):');
          print(jsonEncode(recommendationsJson));
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: AnalysisResultScreen(
            profileImagePath: capturedImages.value[FacePosition.front],
            skinType: getSkinTypeDisplay(context, userProfile?.skinType),
            primaryGoal: getPrimaryGoalDisplay(context, userProfile),
            onBackPressed: handleBackFromResult,
            recommendations: recommendations.value ?? [],
          ),
        );
    }
  }
}
