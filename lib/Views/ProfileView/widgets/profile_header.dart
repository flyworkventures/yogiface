import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class ProfileHeader extends StatelessWidget {
  final String userName;
  final String versionText;
  final ImageProvider profileImage;
  final VoidCallback? onTap;

  const ProfileHeader({
    super.key,
    required this.userName,
    required this.versionText,
    required this.profileImage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: profileImage,
          ),
          const SizedBox(height: 12),
          Text(
            userName,
            style: AppTextStyles.onboardingBody(
              20,
              weight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            versionText,
            style: AppTextStyles.onboardingBody(
              14,
              weight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
