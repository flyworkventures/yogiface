import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class DeleteDialog extends ConsumerWidget {
  const DeleteDialog({super.key});

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
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  AppIcons.deleteAccount,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Hesabınızı silmek istediğinizden emin misiniz?',
              textAlign: TextAlign.center,
              style: AppTextStyles.latoBody(
                18,
                weight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Bu işlem geri alınamaz ve tüm egzersiz geçmişiniz ile verileriniz kalıcı olarak silinecektir.',
              textAlign: TextAlign.center,
              style: AppTextStyles.latoBody(
                14,
                weight: FontWeight.w300,
                height: 1,
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    final success = await ref
                        .read(AllProviders.userProvider.notifier)
                        .deleteAccount();
                    if (context.mounted) {
                      if (success) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/login', (route) => false);
                      } else {
                        Navigator.of(context).pop(false);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Hesap silinirken bir hata oluştu. Lütfen tekrar deneyiniz.')),
                        );
                      }
                    }
                  } catch (e) {
                    if (context.mounted) {
                      Navigator.of(context).pop(false);
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE94560),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  'Hesabı Sil',
                  style: AppTextStyles.latoBody(
                    14,
                    weight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  'Vazgeç',
                  style: AppTextStyles.latoBody(
                    14,
                    weight: FontWeight.w500,
                    color: Colors.black,
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
