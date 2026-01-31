import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class CourseHeader extends StatelessWidget {
  final bool showBackButton;
  final String title;
  final VoidCallback? onBackPressed;

  const CourseHeader({
    super.key,
    this.showBackButton = false,
    required this.title,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Row(
        children: [
          if (showBackButton) ...[
            IconButton(
              onPressed: onBackPressed ?? () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 24,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(
            title,
            style: AppTextStyles.onboardingBody(
              20,
              weight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
