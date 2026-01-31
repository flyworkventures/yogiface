import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import '../../theme/app_colors.dart';
import 'widgets/focus_areas_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/personalized_analysis_widget.dart';
import 'widgets/popular_courses_widget.dart';
import 'widgets/premium_plan_widget.dart';
import 'widgets/quick_actions_widget.dart';
import 'widgets/todays_exercise_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              const QuickActionsWidget(),
              const PopularCoursesWidget(),
              const SizedBox(height: 4),
              const FocusAreasWidget(),
              const SizedBox(height: 4),
              const PersonalizedAnalysisWidget(),
              const SizedBox(height: 4),
              const TodaysExerciseWidget(),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Premium!',
                    style: AppTextStyles.onboardingBody(
                      20,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const PremiumPlanWidget(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
