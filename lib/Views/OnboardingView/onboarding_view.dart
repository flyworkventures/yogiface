import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/OnboardingView/widgets/onboarding_bottom_bar.dart';
import 'package:yogiface/Views/OnboardingView/widgets/section_progressbar.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/print.dart';

import 'widgets/basic_info_step1.dart';
import 'widgets/basic_info_step2.dart';
import 'widgets/basic_info_step3.dart';
import 'widgets/final_screen.dart';
import 'widgets/habits_step1.dart';
import 'widgets/habits_step2.dart';
import 'widgets/habits_step3.dart';
import 'widgets/loading_screen.dart';
import 'widgets/target_step1.dart';
import 'widgets/target_step2.dart';
import 'widgets/target_step3.dart';

class OnboardingView extends HookWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentStep = useState<int>(0);
    final currentSection =
        useState<String>(context.t.onboarding.basicInformation);
    final currentSectionStep = useState<int>(1);
    final currentSectionTotal = useState<int>(3);

    // Form state
    final fullName = useState<String>('');
    final selectedGender = useState<String?>(null);
    final selectedAge = useState<int>(22);
    final selectedWeight = useState<int>(60);
    final selectedHeight = useState<int>(173);
    final selectedObjectives = useState<Set<String>>({});
    final selectedArea = useState<Set<String>>({});
    final selectedFaceShape = useState<String?>(null);
    final selectedSkinType = useState<String?>(null);
    final selectedConcerns = useState<Set<String>>({});
    final makeupFrequency = useState<String?>(null);
    final hasBotox = useState<bool?>(null);

    // Loading screen progress
    final loadingProgress = useState<double>(0.0);

    // Total steps: Basic Info (3) + Target (3) + Habits (3) + Loading (1) + Final (1) = 11
    const totalSteps = 11;

    // Validation function to check if current step can proceed
    bool isCurrentStepValid() {
      switch (currentStep.value) {
        case 0: // Basic Info Step 1
          return fullName.value.isNotEmpty && selectedGender.value != null;
        case 1: // Basic Info Step 2
          return true; // Weight and height have default values
        case 2: // Basic Info Step 3
          return selectedObjectives.value.isNotEmpty;
        case 3: // Target Step 1
          return selectedArea.value.isNotEmpty;
        case 4: // Target Step 2
          return selectedFaceShape.value != null;
        case 5: // Target Step 3
          return selectedSkinType.value != null;
        case 6: // Habits Step 1
          return selectedConcerns.value.isNotEmpty;
        case 7: // Habits Step 2
          return makeupFrequency.value != null;
        case 8: // Habits Step 3
          return hasBotox.value != null;
        default:
          return true; // Loading and Final screens
      }
    }

    final canProceed = useState<bool>(false);

    void updateSectionInfo(int step) {
      if (step < 3) {
        currentSection.value = context.t.onboarding.basicInformation;
        currentSectionStep.value = step + 1;
        currentSectionTotal.value = 3;
      } else if (step < 6) {
        currentSection.value = context.t.onboarding.target;
        currentSectionStep.value = step - 2;
        currentSectionTotal.value = 3;
      } else if (step < 9) {
        currentSection.value = context.t.onboarding.habits;
        currentSectionStep.value = step - 5;
        currentSectionTotal.value = 3;
      } else if (step == 9) {
        currentSection.value = '';
        currentSectionStep.value = 0;
        currentSectionTotal.value = 0;
      } else {
        currentSection.value = '';
        currentSectionStep.value = 0;
        currentSectionTotal.value = 0;
      }
    }

    void nextPage() {
      Print.info('Current Step: ${currentStep.value}');
      if (currentStep.value == 0) {
        FocusScope.of(context).unfocus();
      }
      if (currentStep.value < totalSteps - 1) {
        Print.info('Next Step: ${currentStep.value + 1}');
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }

    void previousPage() {
      if (currentStep.value > 0) {
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }

    // Layout kontrolleri
    final shouldShowTopBar = currentStep.value < 9;
    final isLoadingScreen = currentStep.value == 9;
    final isFinalScreen = currentStep.value == 10;

    // Update canProceed whenever form state changes
    useEffect(() {
      canProceed.value = isCurrentStepValid();
      return null;
    }, [
      currentStep.value,
      fullName.value,
      selectedGender.value,
      selectedAge.value,
      selectedWeight.value,
      selectedHeight.value,
      selectedObjectives.value,
      selectedArea.value,
      selectedFaceShape.value,
      selectedSkinType.value,
      selectedConcerns.value,
      makeupFrequency.value,
      hasBotox.value,
    ]);

    useEffect(() {
      void listener() {
        final page = pageController.page;
        final rounded = page?.round() ?? 0;
        debugPrint('📍 Page listener: raw=$page, rounded=$rounded');
        currentStep.value = rounded;
        updateSectionInfo(rounded);
      }

      pageController.addListener(listener);
      return () => pageController.removeListener(listener);
    }, [pageController]);

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: AppPaddings.horizontalPage,
        child: Column(
          children: [
            if (shouldShowTopBar && currentSection.value.isNotEmpty)
              const SizedBox(height: AppSpacing.xxxl),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: shouldShowTopBar && currentSection.value.isNotEmpty
                  ? 1.0
                  : 0.0,
              child: IgnorePointer(
                ignoring:
                    !(shouldShowTopBar && currentSection.value.isNotEmpty),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: AppSpacing.xl,
                    right: AppSpacing.xl,
                    top: AppSpacing.md,
                    bottom: AppSpacing.lg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              currentSection.value.isNotEmpty
                                  ? currentSection.value
                                  : ' ',
                              style: AppTextStyles.onboardingBody(
                                14,
                                color: AppColors.onboardingButtonGradientStart,
                                weight: FontWeight.w800,
                                letterSpacing: 1.2,
                                height: 1,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Text(
                            currentSectionTotal.value > 0
                                ? '${context.t.onboarding.step} ${currentSectionStep.value} ${context.t.onboarding.of} ${currentSectionTotal.value}'
                                : ' ',
                            style: AppTextStyles.onboardingBody(
                              14,
                              color: AppColors.onboardingButtonGradientStart,
                              weight: FontWeight.w800,
                              letterSpacing: 1.2,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      SectionProgressBar(
                        current: currentSectionStep.value > 0
                            ? currentSectionStep.value
                            : 1,
                        total: currentSectionTotal.value > 0
                            ? currentSectionTotal.value
                            : 3,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 2) MIDDLE (değişen içerik)
            Expanded(
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // Basic Info Step 1
                  BasicInfoStep1(
                    fullName: fullName,
                    selectedGender: selectedGender,
                    selectedAge: selectedAge,
                    onNext: nextPage,
                  ),
                  // Basic Info Step 2
                  BasicInfoStep2(
                    selectedWeight: selectedWeight,
                    selectedHeight: selectedHeight,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Basic Info Step 3
                  BasicInfoStep3(
                    selectedObjectives: selectedObjectives,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Target Step 1
                  TargetStep1(
                    selectedArea: selectedArea,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Target Step 2
                  TargetStep2(
                    selectedFaceShape: selectedFaceShape,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Target Step 3
                  TargetStep3(
                    selectedSkinType: selectedSkinType,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Habits Step 1
                  HabitsStep1(
                    selectedConcerns: selectedConcerns,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Habits Step 2
                  HabitsStep2(
                    makeupFrequency: makeupFrequency,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Habits Step 3
                  HabitsStep3(
                    hasBotox: hasBotox,
                    onBack: previousPage,
                    onNext: nextPage,
                  ),
                  // Loading Screen
                  LoadingScreen(
                    onComplete: nextPage,
                    onProgressChanged: (progress) {
                      loadingProgress.value = progress;
                    },
                    onboardingData: {
                      'full_name':
                          fullName.value.isNotEmpty ? fullName.value : null,
                      'gender': selectedGender.value ?? 'other',
                      'age': selectedAge.value,
                      'weight': selectedWeight.value,
                      'height': selectedHeight.value,
                      'skin_type': selectedSkinType.value ?? 'normal',
                      'has_botox': hasBotox.value ?? false,
                      'target_face_shape': selectedFaceShape.value ?? 'oval',
                      'makeup_frequency': makeupFrequency.value ?? 'never',
                      'skin_concerns': selectedConcerns.value.toList(),
                      'objectives': selectedObjectives.value.toList(),
                      'improvement_areas': selectedArea.value.toList(),
                    },
                  ),
                  // Final Screen
                  const FinalScreen(),
                ],
              ),
            ),

            const SizedBox(height: AppSpacing.lg),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppSpacing.xl,
                  right: AppSpacing.xl,
                  bottom: AppSpacing.lg,
                ),
                child: OnboardingBottomBar(
                  currentStep: currentStep.value,
                  isLoadingScreen: isLoadingScreen,
                  isFinalScreen: isFinalScreen,
                  loadingProgress: loadingProgress.value,
                  canProceed: canProceed.value,
                  onBack: previousPage,
                  onNext: nextPage,
                  onGetStarted: () {
                    Navigator.of(context).pushReplacementNamed('/main');
                  },
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
          ],
        ),
      ),
    );
  }
}
