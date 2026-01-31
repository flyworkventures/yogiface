import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class PersonalizedAnalysisWidget extends StatelessWidget {
  const PersonalizedAnalysisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        width: double.infinity,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          // boxShadow: [
          //   BoxShadow(
          //     color: AppColors.boxShadowColor,
          //     blurRadius: 1,
          //     offset: const Offset(0, 1),
          //   ),
          // ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage(AppImages.facialanalys),
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Personalized\nFacial Analysis\nReport',
                style: AppTextStyles.onboardingBody(
                  18,
                  height: 1.2,
                  weight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Please analyze your skin\nto find out what type it is.',
                style: AppTextStyles.onboardingBody(12,
                    weight: FontWeight.w500, height: 1.4),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/facial-scan');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFD4A5FF),
                        Color(0xFFB57EDC),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    'Try it now',
                    style: AppTextStyles.onboardingBody(
                      14,
                      color: AppColors.backgroundLight,
                      weight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
