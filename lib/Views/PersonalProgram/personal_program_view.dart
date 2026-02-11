import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Models/personal_program_model.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/utils/print.dart';

import 'widgets/completion_step.dart';
import 'widgets/daily_goal_step.dart';
import 'widgets/objective_step.dart';
import 'package:yogiface/Views/PersonalProgram/widgets/feeling_step.dart';
import 'package:yogiface/Views/PersonalProgram/widgets/time_preference_step.dart';

class PersonalProgramView extends HookConsumerWidget {
  const PersonalProgramView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final currentStep = useState<int>(0);
    // Changed to String for single selection, initialized empty
    final selectedObjective = useState<String>('');
    final selectedFeeling = useState<String>('');
    final selectedTime = useState<String>('');
    final selectedGoal = useState<String?>(null);

    useEffect(() {
      pageController.addListener(() {
        currentStep.value = pageController.page?.round() ?? 0;
      });
      return null;
    }, [pageController]);

    Future<void> saveAndNavigate() async {
      try {
        final concernMap = {
          'tired': 'tired_worn_out',
          'harsh': 'harsh_tense',
          'pale': 'pale_lifeless',
          'asymmetrical': 'asymmetrical',
          'general': 'no_problem_general',
        };
        final timeMap = {
          'morning': 'morning',
          'duringDay': 'day',
          'evening': 'evening',
          'anytime': 'anytime',
        };
        // Parse "10 Minutes" -> 10
        final minutes =
            int.tryParse(selectedGoal.value?.split(' ').first ?? '10') ?? 10;

        final prefs = PersonalPreferences(
          primaryConcern:
              concernMap[selectedObjective.value] ?? 'no_problem_general',
          desiredFeeling: selectedFeeling.value, // keys match
          preferredTime: timeMap[selectedTime.value] ?? 'anytime',
          dailyGoalMinutes: minutes,
        );

        final repo = ref.read(AllProviders.personalProgramRepositoryProvider);
        await repo.savePersonalPreferences(prefs);
        Print.info('Personal preferences saved successfully');

        // Wait for animation (approx 3 seconds total from start of step)
        await Future.delayed(const Duration(seconds: 3));

        if (context.mounted) {
          Navigator.of(context).pushReplacementNamed('/personal-courses');
        }
      } catch (e) {
        Print.error('Error saving preferences: $e');
        if (context.mounted) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: $e')));
        }
      }
    }

    useEffect(() {
      if (currentStep.value == 4) {
        saveAndNavigate();
      }
      return null;
    }, [currentStep.value]);

    void goToNextPage() {
      if (currentStep.value < 4) {
        // 5 steps, max index 4
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
      switch (currentStep.value) {
        case 0:
          return selectedObjective.value.isNotEmpty;
        case 1:
          return selectedFeeling.value.isNotEmpty;
        case 2:
          return selectedTime.value.isNotEmpty;
        case 3:
          return selectedGoal.value != null;
        default:
          return true;
      }
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
              currentStep.value == 4 ? Colors.transparent : Colors.white,
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
                          selectedObjective: selectedObjective,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: FeelingStep(
                          selectedFeeling: selectedFeeling,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: TimePreferenceStep(
                          selectedTime: selectedTime,
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
                if (currentStep.value !=
                    4) // Hide buttons on completion step if design requires, usually CompletionStep handles its own navigation or we keep it.
                  // Wait, CompletionStep usually has animation and maybe auto-redirect or a button?
                  // Checking previous code: "currentStep.value == 2 ? context.t.courseDetail.getStarted : context.t.next"
                  // It seems the button was always there.
                  // But CompletionStep might cover the screen.
                  // Let's keep the buttons for now but check if CompletionStep needs them.
                  // Actually, existing code showed buttons.
                  // Code below:
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, bottom: 80, top: 0),
                    child: Row(
                      children: [
                        if (currentStep.value !=
                            4) // Maybe hide Back on completion step?
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
                        if (currentStep.value != 4) const SizedBox(width: 12),
                        Expanded(
                          child: CustomButton(
                            label: currentStep.value == 4
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
