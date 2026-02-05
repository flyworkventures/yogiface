import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';

import 'widgets/completion_step.dart';
import 'widgets/daily_goal_step.dart';
import 'widgets/objective_step.dart';

class PersonalProgramView extends HookWidget {
  const PersonalProgramView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentStep = useState<int>(0);
    final selectedObjectives = useState<Set<String>>({});
    final selectedGoal = useState<String?>(null);

    useEffect(() {
      pageController.addListener(() {
        currentStep.value = pageController.page?.round() ?? 0;
      });
      return null;
    }, [pageController]);

    void goToNextPage() {
      if (currentStep.value < 2) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        Navigator.of(context).pushReplacementNamed('/personal-courses');
      }
    }

    void goToPreviousPage() {
      if (currentStep.value > 0) {
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        Navigator.of(context).pushReplacementNamed('/main');
      }
    }

    bool isNextButtonEnabled() {
      if (currentStep.value == 0) {
        return selectedObjectives.value.isNotEmpty;
      } else if (currentStep.value == 1) {
        return selectedGoal.value != null;
      }
      return true;
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (result, e) async {
        goToPreviousPage();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(1.0, -1.0),
            radius: 1.2,
            colors: [
              Color(0xFFE8A7F2),
              Colors.white,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor:
              currentStep.value == 2 ? Colors.transparent : Colors.white,
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                const SizedBox(height: 24),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: ObjectiveStep(
                          selectedObjectives: selectedObjectives,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: DailyGoalStep(
                          onGoalSelected: (value) {
                            selectedGoal.value = value;
                          },
                          selectedGoal: selectedGoal.value,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: const CompletionStep(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, bottom: 80, top: 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          label: context.t.back,
                          labelStyle: AppTextStyles.onboardingBody(
                            18,
                            weight: FontWeight.w600,
                          ),
                          onPressed: goToPreviousPage,
                          type: CustomButtonType.filled,
                          backgroundColor: const Color(0xFFEEEEEE),
                          foregroundColor: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomButton(
                          label: currentStep.value == 2
                              ? context.t.courseDetail.getStarted
                              : context.t.next,
                          onPressed:
                              isNextButtonEnabled() ? goToNextPage : null,
                          type: CustomButtonType.filled,
                          fullWidth: true,
                          gradientColors: const [
                            Color(0xFFC9A8FF),
                            Color(0xFFE8A7F2),
                          ],
                          labelStyle: AppTextStyles.onboardingBody(
                            18,
                            weight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          gradientBegin: Alignment.centerLeft,
                          gradientEnd: Alignment.centerRight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
