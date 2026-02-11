import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/utils/print.dart';

import '../../../theme/app_colors.dart';

class QuickActionsWidget extends ConsumerWidget {
  const QuickActionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.t.home.quickActions.title,
            style: AppTextStyles.onboardingBody(
              16,
              weight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 150,
            padding: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: AppColors.boxShadowColor,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      AppImages.quikactionimage,
                      height: 143,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 16,
                    bottom: 16,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(context.t.home.quickActions.programTitle,
                              style: AppTextStyles.onboardingBody(
                                16,
                                letterSpacing: 0.5,
                                height: 0.5,
                                weight: FontWeight.w600,
                                color: Colors.black,
                              )),
                          const SizedBox(height: 10),
                          Text(
                            context.t.home.quickActions.programSubtitle,
                            style: AppTextStyles.onboardingBody(
                              16,
                              letterSpacing: -0.3,
                              height: 1,
                              weight: FontWeight.w600,
                              color: AppColors.onboardingButtonGradientStart,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        onPressed: () async {
                          // Check if user has personal program
                          try {
                            final repo = ref.read(
                                AllProviders.personalProgramRepositoryProvider);

                            // Check if program exists
                            final program = await repo.getPersonalProgram();
                            if (program.exercises.isNotEmpty) {
                              if (context.mounted) {
                                Navigator.of(context)
                                    .pushReplacementNamed('/personal-courses');
                              }
                              return;
                            }
                          } catch (e) {
                            // If error (e.g. 404 or "no program"), proceed to creation
                            Print.info(
                                "No personal program found or error: $e");
                          }

                          if (context.mounted) {
                            Navigator.of(context)
                                .pushReplacementNamed('/personal-program');
                          }
                        },
                        label: context.t.home.quickActions.button,
                        size: CustomButtonSize.small,
                        fullWidth: true,
                        gradientColors: [
                          AppColors.onboardingButtonGradientEnd,
                          AppColors.onboardingButtonGradientStart,
                        ],
                        labelColor: Colors.white,
                        labelStyle: AppTextStyles.onboardingBody(
                          13,
                          weight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
