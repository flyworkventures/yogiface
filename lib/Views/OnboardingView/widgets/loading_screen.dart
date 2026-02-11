import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:yogiface/Repositories/onboarding_repository.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/extension.dart';

class LoadingScreen extends HookConsumerWidget {
  final VoidCallback onComplete;
  final void Function(double progress)? onProgressChanged;
  final Map<String, dynamic> onboardingData;

  const LoadingScreen({
    super.key,
    required this.onComplete,
    required this.onboardingData,
    this.onProgressChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress = useState<double>(0.0);
    final hasError = useState<String?>(null);

    // Breathing animation for all elements
    final breathingController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    final breathingScale = useMemoized(
      () => Tween<double>(begin: 0.95, end: 1.05).animate(
        CurvedAnimation(
          parent: breathingController,
          curve: Curves.easeInOut,
        ),
      ),
      [breathingController],
    );

    // Stronger breathing for background circle
    final backgroundBreathingScale = useMemoized(
      () => Tween<double>(begin: 0.90, end: 1.10).animate(
        CurvedAnimation(
          parent: breathingController,
          curve: Curves.easeInOut,
        ),
      ),
      [breathingController],
    );

    useEffect(() {
      debugPrint('🟢 LoadingScreen MOUNTED');
      bool isCompleted = false;
      bool hasSubmittedData = false;

      // Start progress animation
      final timer = Stream.periodic(const Duration(milliseconds: 50), (i) {
        if (i >= 100) return 1.0;
        return (i + 1) / 100.0;
      }).take(101).listen((value) async {
        progress.value = value;
        onProgressChanged?.call(value);

        // At 50% progress, submit user creation and onboarding data
        if (value >= 0.5 && !hasSubmittedData) {
          hasSubmittedData = true;

          try {
            debugPrint('🟡 Starting user creation and onboarding submission');

            // Get stored auth credentials
            final storageService =
                ref.read(AllProviders.secureStorageServiceProvider);
            final authMethod = await storageService.getPendingAuthMethod();

            if (authMethod == null) {
              throw Exception('No auth method found');
            }

            // Create user based on auth method
            final authRepo = ref.read(AllProviders.authRepositoryProvider);

            switch (authMethod) {
              case 'google':
                final idToken = await storageService.getPendingGoogleIdToken();
                if (idToken != null) {
                  await authRepo.signInWithGoogle(idToken: idToken);
                }
                break;
              case 'facebook':
                final accessToken =
                    await storageService.getPendingFacebookToken();
                if (accessToken != null) {
                  await authRepo.signInWithFacebook(accessToken: accessToken);
                }
                break;
              case 'apple':
                final identityToken =
                    await storageService.getPendingAppleIdToken();
                final userInfoJson =
                    await storageService.getPendingAppleUserInfo();
                if (identityToken != null) {
                  Map<String, dynamic>? appleUserInfo;
                  if (userInfoJson != null) {
                    try {
                      appleUserInfo = jsonDecode(userInfoJson);
                    } catch (e) {
                      debugPrint('Error parsing Apple user info: $e');
                    }
                  }
                  await authRepo.signInWithApple(
                    identityToken: identityToken,
                    appleUserInfo: appleUserInfo,
                  );
                }
                break;
              case 'guest':
                await authRepo.createGuestUser(
                  deviceInfo: {
                    'platform': Platform.operatingSystem,
                  },
                );
                break;
            }

            // Submit onboarding data
            final onboardingRepo = ref.read(onboardingRepositoryProvider);
            await onboardingRepo.completeOnboarding(
              fullName: onboardingData['full_name'],
              gender: onboardingData['gender'],
              age: onboardingData['age'],
              weight: onboardingData['weight'],
              height: onboardingData['height'],
              skinType: onboardingData['skin_type'],
              hasBotox: onboardingData['has_botox'],
              targetFaceShape: onboardingData['target_face_shape'],
              makeupFrequency: onboardingData['makeup_frequency'],
              skinConcerns: List<String>.from(onboardingData['skin_concerns']),
              objectives: List<String>.from(onboardingData['objectives']),
              improvementAreas:
                  List<String>.from(onboardingData['improvement_areas']),
            );

            // Try to save OneSignal player id so backend can send push notifications
            try {
              // Use pushSubscription.id (player ID) instead of getOnesignalId() (user ID)
              // because notifications are sent to subscription IDs, not user IDs
              final playerId = OneSignal.User.pushSubscription.id;
              final isOptedIn = OneSignal.User.pushSubscription.optedIn;

              if (playerId != null &&
                  playerId.isNotEmpty &&
                  isOptedIn == true) {
                final userNotifier =
                    ref.read(AllProviders.userProvider.notifier);
                await userNotifier.saveOneSignalId(playerId);
                debugPrint(
                    '✅ OneSignal player id saved: $playerId (subscribed)');
              } else if (playerId != null && isOptedIn != true) {
                debugPrint(
                    '⚠️ OneSignal player id exists but user not subscribed: $playerId');
              } else {
                debugPrint('⚠️ OneSignal player id not available');
              }
            } catch (e) {
              debugPrint('❌ Error saving OneSignal player id: $e');
            }

            // Clear pending auth credentials now that account is created
            await storageService.clearPendingAuthCredentials();

            debugPrint('✅ User creation and onboarding completed successfully');
          } catch (e) {
            debugPrint('❌ Error during user creation/onboarding: $e');
            hasError.value = e.toString();
          }
        }

        if (value >= 1.0 && !isCompleted) {
          isCompleted = true;
          debugPrint('🟢 Progress 100% - calling onComplete in 1 second');
          Future.delayed(const Duration(seconds: 1), () {
            if (hasError.value == null) {
              debugPrint('🟢 onComplete NOW');
              onComplete();
            } else {
              debugPrint(
                  '❌ Cannot complete - error occurred: ${hasError.value}');
            }
          });
        }
      });

      return () {
        debugPrint('🔴 LoadingScreen DISPOSED');
        timer.cancel();
      };
    }, []);

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.xl),

            // Kadın fotoğrafı
            Container(
              height: context.height * 0.28,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppImages.female3),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xl),

            // Başlık
            Align(
                alignment: Alignment.center,
                child: Text(
                  context.t.onboarding.creatingPersonalizedProfile,
                  style: AppTextStyles.onboardingBody(
                    28,
                    height: 1.3,
                    weight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: AppSpacing.sm),

            // Alt metin
            Align(
                alignment: Alignment.center,
                child: Text(
                  context.t.onboarding.tailoringExperience,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.onboardingBody(
                    18,
                    height: 1.3,
                    weight: FontWeight.w500,
                  ),
                )),
            const SizedBox(height: AppSpacing.xl * 2),

            // İkonlar bölümü - Breathing animation
            LayoutBuilder(
              builder: (context, constraints) {
                final iconGroupSize = constraints.maxWidth * 0.55;
                final iconSize = iconGroupSize * 0.30;

                return Center(
                  child: SizedBox(
                    width: iconGroupSize.clamp(180.0, 220.0),
                    height: iconGroupSize.clamp(180.0, 220.0),
                    child: AnimatedBuilder(
                      animation: breathingController,
                      builder: (context, child) {
                        return Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            // Arka plan mor daire - Breathing animation
                            Transform.scale(
                              scale: backgroundBreathingScale.value,
                              child: Image.asset(
                                AppIcons.circlebackground,
                                width: iconGroupSize.clamp(180.0, 220.0),
                                height: iconGroupSize.clamp(180.0, 220.0),
                                fit: BoxFit.contain,
                              ),
                            ),

                            // İkonlar - Breathing animation
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Heart Icon
                                Transform.scale(
                                  scale: breathingScale.value,
                                  child: Image.asset(
                                    AppIcons.heart,
                                    width: iconSize.clamp(50.0, 69.0),
                                    height: iconSize.clamp(50.0, 68.0),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: iconGroupSize * 0.035),
                                // Profile Icon
                                Transform.scale(
                                  scale: breathingScale.value,
                                  child: Image.asset(
                                    AppIcons.profile,
                                    width: iconSize.clamp(50.0, 69.0),
                                    height: iconSize.clamp(50.0, 68.0),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(width: iconGroupSize * 0.035),
                                // Setting Icon
                                Transform.scale(
                                  scale: breathingScale.value,
                                  child: Image.asset(
                                    AppIcons.setting,
                                    width: iconSize.clamp(50.0, 69.0),
                                    height: iconSize.clamp(50.0, 68.0),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
