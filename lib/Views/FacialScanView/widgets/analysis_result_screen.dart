import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_border_radius.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class AnalysisResultScreen extends StatelessWidget {
  const AnalysisResultScreen({
    super.key,
    required this.profileImagePath,
    required this.skinType,
    required this.primaryGoal,
    required this.onBackPressed,
    this.recommendedExercise,
  });

  final String? profileImagePath;
  final String skinType;
  final String primaryGoal;
  final VoidCallback onBackPressed;
  final RecommendedExercise? recommendedExercise;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 48),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.onboardingPurple.withValues(alpha: 0.3),
                      width: 3,
                    ),
                  ),
                  child: ClipOval(
                    child: profileImagePath != null
                        ? Image.file(
                            File(profileImagePath!),
                            fit: BoxFit.cover,
                          )
                        : Container(
                            color: AppColors.onboardingGreyLight,
                            child: Icon(
                              Icons.person,
                              size: 48,
                              color: AppColors.onboardingGreyText,
                            ),
                          ),
                  ),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppColors.success,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Title
            Text(
              context.t.facialScan.result.title,
              style: AppTextStyles.heading(24, FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              context.t.facialScan.result.subtitle,
              style: AppTextStyles.body(
                14,
                color: AppColors.onboardingGreyText,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // Skin type card
            _ResultCard(
              icon: Icons.spa_outlined,
              iconColor: AppColors.onboardingPurple,
              label: context.t.facialScan.result.skinType,
              value: skinType,
            ),
            const SizedBox(height: 12),
            // Primary goal card
            _ResultCard(
              icon: Icons.auto_awesome,
              iconColor: Colors.blue,
              iconBgColor: Colors.blue.withValues(alpha: 0.1),
              label: context.t.facialScan.result.primaryGoal,
              value: primaryGoal,
            ),
            const SizedBox(height: 32),
            // Recommended for you section
            if (recommendedExercise != null) ...[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  context.t.facialScan.result.recommended,
                  style: AppTextStyles.heading(18, FontWeight.w600),
                ),
              ),
              const SizedBox(height: 16),
              _RecommendedExerciseCard(exercise: recommendedExercise!),
            ],
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                label: context.t.facialScan.result.back,
                onPressed: onBackPressed,
                fullWidth: true,
                size: CustomButtonSize.large,
                gradientColors: const [
                  AppColors.onboardingButtonGradientStart,
                  AppColors.onboardingButtonGradientEnd,
                ],
                labelColor: Colors.white,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.value,
    this.iconBgColor,
  });

  final IconData icon;
  final Color iconColor;
  final Color? iconBgColor;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppBorderRadius.lgRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBgColor ?? iconColor.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppTextStyles.body(
                  10,
                  color: AppColors.onboardingGreyText,
                  weight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: AppTextStyles.heading(16, FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RecommendedExerciseCard extends StatelessWidget {
  const _RecommendedExerciseCard({required this.exercise});

  final RecommendedExercise exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.lgRadius,
        image: exercise.imagePath != null
            ? DecorationImage(
                image: FileImage(File(exercise.imagePath!)),
                fit: BoxFit.cover,
              )
            : null,
        color: AppColors.onboardingGreyLight,
      ),
      child: Stack(
        children: [
          // Gradient overlay
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.lgRadius,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
          ),
          // Content
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Thumbnail
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: AppBorderRadius.smRadius,
                    color: Colors.white.withValues(alpha: 0.3),
                  ),
                  child: ClipRRect(
                    borderRadius: AppBorderRadius.smRadius,
                    child: exercise.thumbnailPath != null
                        ? Image.file(
                            File(exercise.thumbnailPath!),
                            fit: BoxFit.cover,
                          )
                        : Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                  ),
                ),
                const SizedBox(width: 12),
                // Text content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        exercise.title,
                        style: AppTextStyles.heading(
                          15,
                          FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        exercise.description,
                        style: AppTextStyles.body(
                          11,
                          color: Colors.white.withValues(alpha: 0.85),
                          height: 1.3,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // Play button
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.25),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 24,
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

class RecommendedExercise {
  final String title;
  final String description;
  final String? imagePath;
  final String? thumbnailPath;

  RecommendedExercise({
    required this.title,
    required this.description,
    this.imagePath,
    this.thumbnailPath,
  });
}
