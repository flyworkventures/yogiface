import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:yogiface/Models/auth_model.dart';
import 'package:yogiface/Models/exercise_model.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/FacialScanView/services/face_detection_service.dart';
import 'package:yogiface/Views/FacialScanView/widgets/analysis_result_screen.dart';
import 'package:yogiface/Views/FacialScanView/widgets/analyzing_screen.dart';
import 'package:yogiface/Views/FacialScanView/widgets/capture_screen.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/utils/print.dart';

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
    final currentLocale = LocaleSettings.currentLocale;
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

    Future<void> startAnalysis() async {
      scanState.value = FacialScanState.analyzing;
      analyzeProgress.value = 0.0;

      exerciseRepository
          .getRecommendations(
        lang: currentLocale.languageCode,
        limit: 5,
        minScore: 0,
      )
          .then((result) {
        recommendations.value = result;
        Print.info('✅ Fetched ${result.length} recommendations');
      }).catchError((e) {
        Print.error('❌ Error fetching recommendations: $e');
        recommendations.value = [];
      });

      Timer.periodic(const Duration(milliseconds: 100), (timer) {
        if (analyzeProgress.value >= 1.0) {
          timer.cancel();
          scanState.value = FacialScanState.result;
        } else {
          analyzeProgress.value += 0.01;
        }
      });
    }

    // iOS ve Android uyumlu güvenli izin ve yakalama fonksiyonu
    Future<void> handleCapture() async {
      isLoading.value = true;
      errorMessage.value = null;

      try {
        // 1. Mevcut durumu kontrol et
        var status = await Permission.camera.status;

        // 2. Eğer kalıcı olarak reddedilmişse (iOS'te sistem diyaloğu çıkmaz)
        if (status.isPermanentlyDenied) {
          final shouldOpenSettings = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(context.t.facialScan.errors.cameraPermissionRequired),
              content:
                  Text(context.t.facialScan.errors.cameraPermissionMessage),
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
          isLoading.value = false;
          return;
        }

        // 3. İzin verilmemişse sistem diyaloğunu tetikle
        if (!status.isGranted) {
          status = await Permission.camera.request();
        }

        // 4. Kullanıcı hala izin vermediyse hata mesajı göster ve dur
        if (!status.isGranted) {
          errorMessage.value = context.t.facialScan.errors.cameraPermission;
          isLoading.value = false;
          return;
        }

        // 5. İzin TAMAM, kamerayı aç
        final XFile? image = await imagePicker.pickImage(
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.front,
          imageQuality: 85,
        );

        if (image == null) {
          isLoading.value = false;
          return;
        }

        // Yüz algılama kontrolü
        final hasFace = await faceDetectionService.hasFace(image.path);

        if (!hasFace) {
          errorMessage.value = context.t.facialScan.errors.noFaceDetected;
          isLoading.value = false;
          return;
        }

        // State güncelleme ve pozisyon yönetimi
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
        Print.error("Capture Error: $e");
        errorMessage.value = context.t.facialScan.errors.captureFailed;
      } finally {
        isLoading.value = false;
      }
    }

    void handlePositionTap(FacePosition position) {
      currentPosition.value = position;
    }

    void handleDeleteImage(FacePosition position) {
      final newImages = Map<FacePosition, String?>.from(capturedImages.value);
      newImages[position] = null;
      capturedImages.value = newImages;
      errorMessage.value = null;
      currentPosition.value = position;
    }

    void handleBackFromResult() {
      Navigator.of(context).pop();
    }

    final userState = ref.watch(AllProviders.userProvider);
    final userProfile = userState.currentUser?.profile;

    String getSkinTypeDisplay(BuildContext context, String? skinType) {
      if (skinType == null) return 'Unknown';
      final skinTypesMap = {
        'normal': context.t.onboarding.normal,
        'oily': context.t.onboarding.oily,
        'dry': context.t.onboarding.dry,
        'combination': context.t.onboarding.combination,
        'sensitive': context.t.onboarding.sensitive,
      };
      return skinTypesMap[skinType.toLowerCase()] ?? skinType;
    }

    String getPrimaryGoalDisplay(BuildContext context, UserProfile? profile) {
      if (profile == null) return 'Overall Wellness';

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
      return 'Overall Wellness';
    }

    // UI Rendering
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
            skinType: getSkinTypeDisplay(context, userProfile?.skinType),
            primaryGoal: getPrimaryGoalDisplay(context, userProfile),
            onBackPressed: handleBackFromResult,
            recommendations: recommendations.value ?? [],
          ),
        );
    }
  }
}
