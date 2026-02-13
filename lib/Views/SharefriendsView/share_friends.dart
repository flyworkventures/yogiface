import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class ShareWithFriendsPage extends HookConsumerWidget {
  const ShareWithFriendsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(AllProviders.userProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          context.t.share.title,
          style: AppTextStyles.onboardingBody(
            16,
            weight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topRight,
            radius: 1.7,
            colors: [
              Color(0xFFE8A7F2),
              Colors.white,
            ],
            stops: [0.0, 0.5],
          ),
        ),
        child: SizedBox.expand(
          child: SafeArea(
            child: Builder(
              builder: (context) {
                final authResponse = userState.currentUser;
                final user = authResponse?.user;

                // Show loading if no user data
                if (!userState.hasUser && userState.asyncValue.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                // Show error if still no user
                if (user == null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Unable to load user data'),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            ref
                                .read(AllProviders.userProvider.notifier)
                                .refreshUser(silent: false);
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const Spacer(flex: 1),
                      // İllüstrasyon
                      Image.asset(
                        'assets/images/sharefriends.png',
                        height: 200,
                      ),
                      const SizedBox(height: 32),
                      // Başlık
                      Text(
                        context.t.share.mainTitle,
                        style: AppTextStyles.onboardingBody(
                          24,
                          weight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Açıklama
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: AppTextStyles.onboardingBody(
                            16,
                            weight: FontWeight.w400,
                            height: 1.3,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(text: context.t.share.descriptionPart1),
                            TextSpan(
                                text: context.t.share.descriptionPart2,
                                style: AppTextStyles.onboardingBody(
                                  16,
                                  height: 1.3,
                                  weight: FontWeight.w700,
                                  color: Colors.black,
                                )),
                            TextSpan(text: context.t.share.descriptionPart3),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.border, width: 1),
                          color: Colors.white.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text(
                              context.t.share.yourReferralCode,
                              style: AppTextStyles.onboardingBody(
                                12,
                                weight: FontWeight.w500,
                                // color: Colors.grey,
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Text(
                                user.invitationCode ?? '',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.onboardingBody(
                                  18,
                                  weight: FontWeight.w600,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            GestureDetector(
                              onTap: () {
                                final code = user.invitationCode ?? '';
                                if (code.isNotEmpty) {
                                  Clipboard.setData(ClipboardData(text: code));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text(context.t.share.codeCopied)),
                                  );
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFE991DC),
                                      Color(0xFFD56FCB)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppIcons.copy,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      context.t.share.copyCode,
                                      style: AppTextStyles.onboardingBody(
                                        14,
                                        weight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
