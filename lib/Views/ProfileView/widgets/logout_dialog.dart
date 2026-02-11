import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close Icon
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  AppIcons.logout,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Title
            Text(
              context.t.profile.logoutDialog.title,
              style: AppTextStyles.latoBody(
                18,
                weight: FontWeight.w700,
                color: Colors.black,
                height: 1,
              ),
            ),
            const SizedBox(height: 24),
            // Subtitle
            Text(
              context.t.profile.logoutDialog.message,
              textAlign: TextAlign.center,
              style: AppTextStyles.latoBody(
                14,
                weight: FontWeight.w400,
                height: 1,
                // color: AppColors.editprofiledelete,
              ),
            ),
            const SizedBox(height: 24),
            // Logout Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(AllProviders.authRepositoryProvider).logout();
                  Navigator.of(context).pop(true);
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE94560),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  context.t.profile.logoutDialog.logoutButton,
                  style: AppTextStyles.latoBody(
                    14,
                    weight: FontWeight.w500,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Cancel Button
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  context.t.profile.logoutDialog.cancelButton,
                  style: AppTextStyles.latoBody(
                    14,
                    weight: FontWeight.w600,
                    color: Colors.black,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
