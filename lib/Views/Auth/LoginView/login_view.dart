import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Services/social_auth_service.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/shared/custom_button.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class LoginView extends ConsumerWidget {
  const LoginView({
    super.key,
  });

  Future<void> _handleGoogleSignIn(BuildContext context, WidgetRef ref) async {
    try {
      // Show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      // Get ID token from Google Sign-In
      final socialAuthService = ref.read(socialAuthServiceProvider);
      final idToken = await socialAuthService.signInWithGoogle();

      if (idToken == null) {
        // User cancelled sign-in
        if (context.mounted) Navigator.pop(context);
        return;
      }

      // Check user status with backend
      final authRepo = ref.read(AllProviders.authRepositoryProvider);
      final response = await authRepo.signInWithGoogle(idToken: idToken);

      if (response.user != null && response.user!.onboardingCompleted) {
        // User exists and has completed onboarding - go explicitly to MainView
        if (context.mounted) {
          Navigator.pop(context); // Close loading dialog
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        }
        return;
      }

      // User needs onboarding - save pending credentials
      final storageService =
          ref.read(AllProviders.secureStorageServiceProvider);
      await storageService.savePendingAuthMethod('google');
      await storageService.savePendingGoogleIdToken(idToken);

      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        // Navigate to onboarding
        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(context.t.auth.signInFailed(error: e.toString()))),
        );
      }
    }
  }

  // Future<void> _handleFacebookSignIn(
  //     BuildContext context, WidgetRef ref) async {
  //   try {
  //     // Show loading
  //     showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (context) => const Center(
  //         child: CircularProgressIndicator(),
  //       ),
  //     );

  //     // Get access token from Facebook Sign-In
  //     final socialAuthService = ref.read(socialAuthServiceProvider);
  //     final accessToken = await socialAuthService.signInWithFacebook();

  //     if (accessToken == null) {
  //       // User cancelled sign-in
  //       if (context.mounted) Navigator.pop(context);
  //       return;
  //     }

  //     // Check user status with backend
  //     final authRepo = ref.read(AllProviders.authRepositoryProvider);
  //     final response =
  //         await authRepo.signInWithFacebook(accessToken: accessToken);

  //     if (response.user != null && response.user!.onboardingCompleted) {
  //       // User exists and has completed onboarding - go explicitly to MainView
  //       if (context.mounted) {
  //         Navigator.pop(context); // Close loading dialog
  //         Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
  //       }
  //       return;
  //     }

  //     // User needs onboarding - save pending credentials
  //     final storageService =
  //         ref.read(AllProviders.secureStorageServiceProvider);
  //     await storageService.savePendingAuthMethod('facebook');
  //     await storageService.savePendingFacebookToken(accessToken);

  //     if (context.mounted) {
  //       Navigator.pop(context); // Close loading dialog
  //       // Navigate to onboarding
  //       Navigator.pushReplacementNamed(context, '/onboarding');
  //     }
  //   } catch (e) {
  //     if (context.mounted) {
  //       Navigator.pop(context); // Close loading dialog
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //             content: Text(context.t.auth.signInFailed(error: e.toString()))),
  //       );
  //     }
  //   }
  // }

  Future<void> _handleAppleSignIn(BuildContext context, WidgetRef ref) async {
    try {
      // Show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      // Get identity token from Apple Sign-In
      final socialAuthService = ref.read(socialAuthServiceProvider);
      final appleCredential = await socialAuthService.signInWithApple();

      if (appleCredential == null) {
        // User cancelled sign-in
        if (context.mounted) Navigator.pop(context);
        return;
      }

      // Check user status with backend
      final authRepo = ref.read(AllProviders.authRepositoryProvider);
      // Apple sometimes provides user info only on first login, so we pass it if available
      final response = await authRepo.signInWithApple(
        identityToken: appleCredential['identityToken'] as String,
        appleUserInfo: appleCredential['user'] as Map<String, dynamic>?,
      );

      if (response.user != null && response.user!.onboardingCompleted) {
        // User exists and has completed onboarding - go explicitly to MainView
        if (context.mounted) {
          Navigator.pop(context); // Close loading dialog
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        }
        return;
      }

      // User needs onboarding - save pending credentials
      final storageService =
          ref.read(AllProviders.secureStorageServiceProvider);
      await storageService.savePendingAuthMethod('apple');
      await storageService
          .savePendingAppleIdToken(appleCredential['identityToken'] as String);

      // Store user info if available (as JSON string)
      if (appleCredential['user'] != null) {
        final userInfo = appleCredential['user'] as Map<String, dynamic>;
        await storageService.savePendingAppleUserInfo(
          userInfo.toString(), // You might want to use jsonEncode here
        );
      }

      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        // Navigate to onboarding
        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(context.t.auth.signInFailed(error: e.toString()))),
        );
      }
    }
  }

  Future<void> _handleGuestLogin(BuildContext context, WidgetRef ref) async {
    try {
      // Show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      // Store pending auth method instead of creating guest user
      final storageService =
          ref.read(AllProviders.secureStorageServiceProvider);
      await storageService.savePendingAuthMethod('guest');

      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        // Navigate to onboarding - user creation will happen after onboarding
        Navigator.pushReplacementNamed(context, '/onboarding');
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(context.t.auth.signInFailed(error: e.toString()))),
        );
      }
    }
  }

  void _showTermsOfService(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          constraints: const BoxConstraints(maxHeight: 600),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.t.termsOfService.title,
                      style: AppTextStyles.heading(
                        20,
                        FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                context.t.termsOfService.lastUpdated,
                style: AppTextStyles.body(
                  12,
                  color: Colors.black54,
                ).copyWith(fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 16),
              // Scrollable Content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Intro
                      Text(
                        context.t.termsOfService.intro,
                        style: AppTextStyles.body(
                          14,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        context.t.termsOfService.principle,
                        style: AppTextStyles.body(
                          14,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),

                      // Section 1
                      _buildSectionTitle(
                          context, context.t.termsOfService.section1.title),
                      _buildSectionContent(
                          context, context.t.termsOfService.section1.content),
                      const SizedBox(height: 8),
                      ...context.t.termsOfService.section1.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),
                      const SizedBox(height: 8),
                      _buildSectionContent(
                          context, context.t.termsOfService.section1.note),

                      // Section 2
                      _buildSectionTitle(
                          context, context.t.termsOfService.section2.title),
                      ...context.t.termsOfService.section2.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),

                      // Section 3
                      _buildSectionTitle(
                          context, context.t.termsOfService.section3.title),
                      ...context.t.termsOfService.section3.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),

                      // Section 4
                      _buildSectionTitle(
                          context, context.t.termsOfService.section4.title),
                      _buildSectionContent(
                          context, context.t.termsOfService.section4.content),

                      // Section 5
                      _buildSectionTitle(
                          context, context.t.termsOfService.section5.title),
                      ...context.t.termsOfService.section5.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),

                      // Section 6
                      _buildSectionTitle(
                          context, context.t.termsOfService.section6.title),
                      _buildSectionContent(
                          context, context.t.termsOfService.section6.content),

                      // Section 7
                      _buildSectionTitle(
                          context, context.t.termsOfService.section7.title),
                      _buildSectionContent(
                          context, context.t.termsOfService.section7.content),

                      // Section 12
                      _buildSectionTitle(
                          context, context.t.termsOfService.section12.title),
                      _buildSectionContent(
                          context, context.t.termsOfService.section12.content),

                      // Section 13
                      _buildSectionTitle(
                          context, context.t.termsOfService.section13.title),
                      const SizedBox(height: 8),
                      Text(
                        context.t.termsOfService.section13.email,
                        style: AppTextStyles.body(
                          14,
                          weight: FontWeight.w600,
                          color: const Color(0xFFB388DD),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Close Button
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFB388DD),
                        Color(0xFFD4A5E8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Center(
                          child: Text(
                            context.t.back,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
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

  void _showPrivacyPolicy(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          constraints: const BoxConstraints(maxHeight: 600),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.t.privacyPolicy.title,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                context.t.privacyPolicy.lastUpdated,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 16),
              // Scrollable Content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Intro & Principle
                      Text(
                        context.t.privacyPolicy.intro,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        context.t.privacyPolicy.principle,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),

                      // Section 1
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section1.title),
                      const SizedBox(height: 12),
                      Text(
                        context.t.privacyPolicy.section1.sub1.title,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...context.t.privacyPolicy.section1.sub1.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        context.t.privacyPolicy.section1.sub2.title,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...context.t.privacyPolicy.section1.sub2.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),

                      // Section 2
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section2.title),
                      const SizedBox(height: 8),
                      ...context.t.privacyPolicy.section2.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),
                      const SizedBox(height: 8),
                      _buildSectionContent(
                          context, context.t.privacyPolicy.section2.note),

                      // Section 3
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section3.title),
                      const SizedBox(height: 8),
                      ...context.t.privacyPolicy.section3.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),

                      // Section 4
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section4.title),
                      _buildSectionContent(
                          context, context.t.privacyPolicy.section4.content),

                      // Section 5
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section5.title),
                      _buildSectionContent(
                          context, context.t.privacyPolicy.section5.content),

                      // Section 6
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section6.title),
                      _buildSectionContent(
                          context, context.t.privacyPolicy.section6.content),
                      const SizedBox(height: 8),
                      Text(
                        context.t.privacyPolicy.section6.contact,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        context.t.privacyPolicy.section6.email,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFFB388DD),
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      // Section 8
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section8.title),
                      _buildSectionContent(
                          context, context.t.privacyPolicy.section8.content),

                      // Section 10
                      _buildSectionTitle(
                          context, context.t.privacyPolicy.section10.title),
                      const SizedBox(height: 8),
                      Text(
                        context.t.privacyPolicy.section10.email,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFFB388DD),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Close Button
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFB388DD),
                        Color(0xFFD4A5E8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Center(
                          child: Text(
                            context.t.back,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
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

  void _showCookiesPolicy(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          constraints: const BoxConstraints(maxHeight: 600),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Expanded(
                    child: Text(
                      context.t.cookiesPolicy.title,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                context.t.cookiesPolicy.lastUpdated,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 16),
              // Scrollable Content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Intro
                      Text(
                        context.t.cookiesPolicy.intro,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Section 1
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section1.title),
                      _buildSectionContent(
                          context, context.t.cookiesPolicy.section1.content),

                      // Section 2
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section2.title),
                      const SizedBox(height: 12),
                      _buildSubSection(
                        context,
                        context.t.cookiesPolicy.section2.essential.title,
                        context.t.cookiesPolicy.section2.essential.content,
                      ),
                      _buildSubSection(
                        context,
                        context.t.cookiesPolicy.section2.performance.title,
                        context.t.cookiesPolicy.section2.performance.content,
                      ),
                      _buildSubSection(
                        context,
                        context.t.cookiesPolicy.section2.personalization.title,
                        context
                            .t.cookiesPolicy.section2.personalization.content,
                      ),
                      _buildSubSection(
                        context,
                        context.t.cookiesPolicy.section2.marketing.title,
                        context.t.cookiesPolicy.section2.marketing.content,
                      ),

                      // Section 3
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section3.title),
                      const SizedBox(height: 8),
                      ...context.t.cookiesPolicy.section3.items.map(
                        (item) => _buildBulletPoint(context, item),
                      ),

                      // Section 4
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section4.title),
                      _buildSectionContent(
                          context, context.t.cookiesPolicy.section4.content),

                      // Section 5
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section5.title),
                      _buildSectionContent(
                          context, context.t.cookiesPolicy.section5.content),

                      // Section 6
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section6.title),
                      _buildSectionContent(
                          context, context.t.cookiesPolicy.section6.content),

                      // Section 7
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section7.title),
                      _buildSectionContent(
                          context, context.t.cookiesPolicy.section7.content),

                      // Section 8
                      _buildSectionTitle(
                          context, context.t.cookiesPolicy.section8.title),
                      const SizedBox(height: 8),
                      Text(
                        context.t.cookiesPolicy.section8.email,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFFB388DD),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Close Button
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFB388DD),
                        Color(0xFFD4A5E8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Center(
                          child: Text(
                            context.t.back,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
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

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        title,
        style: AppTextStyles.onboardingBody(
          16,
          weight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildSectionContent(BuildContext context, String content) {
    return Text(
      content,
      style: AppTextStyles.body(
        14,
        color: Colors.black87,
        height: 1.5,
      ),
    );
  }

  Widget _buildSubSection(BuildContext context, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.body(
              14,
              weight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: AppTextStyles.body(
              14,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• ",
            style: AppTextStyles.onboardingBody(
              14,
              weight: FontWeight.bold,
              color: const Color(0xFFB388DD),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.body(
                14,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      body: Container(
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
        child: Padding(
          padding: AppPaddings.horizontalPage,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        context.t.welcome2,
                        style: AppTextStyles.onboardingBody(
                          42,
                          weight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        context.t.logintext,
                        style: AppTextStyles.onboardingBody(
                          20,
                          weight: FontWeight.w500,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 32),
                      //TODO: check for buttonss
                      if (Platform.isAndroid) ...[
                        CustomButton(
                          label: context.t.auth.google,
                          fullWidth: true,
                          type: CustomButtonType.outlined,
                          icon: Image.asset(
                            AppIcons.google,
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black87,
                          borderColor: const Color(0xFFD9D9D9),
                          iconPadding: 8,
                          borderWidth: 1.0,
                          borderRadius: 50.0,
                          labelStyle: AppTextStyles.onboardingBody(
                            18,
                            weight: FontWeight.w400,
                          ),
                          onPressed: () => _handleGoogleSignIn(context, ref),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            // Expanded(
                            //   child: CustomButton(
                            //     label: context.t.auth.facebook,
                            //     type: CustomButtonType.outlined,
                            //     icon: Image.asset(
                            //       AppIcons.facebook,
                            //     ),
                            //     fullWidth: true,
                            //     backgroundColor: Colors.white,
                            //     foregroundColor: Colors.black87,
                            //     borderColor: const Color(0xFFD9D9D9),
                            //     iconPadding: 8,
                            //     borderWidth: 1.0,
                            //     borderRadius: 50.0,
                            //     labelStyle: AppTextStyles.onboardingBody(
                            //       16,
                            //       weight: FontWeight.w400,
                            //     ),
                            //     onPressed: () =>
                            //         _handleFacebookSignIn(context, ref),
                            //   ),
                            // ),
                            // const SizedBox(width: 12),
                            if (Platform.isIOS)
                              Expanded(
                                child: CustomButton(
                                  label: context.t.auth.apple,
                                  type: CustomButtonType.outlined,
                                  icon: Image.asset(
                                    AppIcons.apple,
                                  ),
                                  fullWidth: true,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black87,
                                  borderColor: const Color(0xFFD9D9D9),
                                  borderWidth: 1.0,
                                  iconPadding: 8,
                                  borderRadius: 50.0,
                                  labelStyle: AppTextStyles.onboardingBody(
                                    16,
                                    weight: FontWeight.w400,
                                  ),
                                  onPressed: () =>
                                      _handleAppleSignIn(context, ref),
                                ),
                              ),
                          ],
                        ),
                      ] else ...[
                        CustomButton(
                          label: context.t.auth.apple,
                          fullWidth: true,
                          type: CustomButtonType.outlined,
                          icon: Image.asset(
                            AppIcons.apple,
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black87,
                          borderColor: const Color(0xFFD9D9D9),
                          iconPadding: 8,
                          borderWidth: 1.0,
                          borderRadius: 50.0,
                          labelStyle: AppTextStyles.onboardingBody(
                            14,
                            weight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                          onPressed: () => _handleAppleSignIn(context, ref),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                label: context.t.auth.google,
                                type: CustomButtonType.outlined,
                                icon: Image.asset(
                                  AppIcons.google,
                                ),
                                fullWidth: true,
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black87,
                                borderColor: const Color(0xFFD9D9D9),
                                borderWidth: 1.0,
                                iconPadding: 8,
                                borderRadius: 50.0,
                                labelStyle: AppTextStyles.onboardingBody(
                                  14,
                                  weight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                                onPressed: () =>
                                    _handleGoogleSignIn(context, ref),
                              ),
                            ),
                            const SizedBox(width: 12),
                            // Expanded(
                            //   child: CustomButton(
                            //     label: context.t.auth.facebook,
                            //     type: CustomButtonType.outlined,
                            //     icon: Image.asset(
                            //       AppIcons.facebook,
                            //     ),
                            //     fullWidth: true,
                            //     backgroundColor: Colors.white,
                            //     foregroundColor: Colors.black87,
                            //     borderColor: const Color(0xFFD9D9D9),
                            //     borderWidth: 1.0,
                            //     iconPadding: 8,
                            //     borderRadius: 50.0,
                            //     labelStyle: AppTextStyles.onboardingBody(
                            //       14,
                            //       weight: FontWeight.w400,
                            //       color: Colors.black87,
                            //     ),
                            //     onPressed: () =>
                            //         _handleFacebookSignIn(context, ref),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFC9A8FF),
                              Color(0xFFE8A7F2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () => _handleGuestLogin(context, ref),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: Text(
                                  context.t.auth.guest,
                                  style: AppTextStyles.button(
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // CustomButton(
              //   label: 'Bypass',
              //   type: CustomButtonType.outlined,
              //   icon: Image.asset(
              //     AppIcons.apple,
              //   ),
              //   fullWidth: true,
              //   backgroundColor: Colors.white,
              //   foregroundColor: Colors.black87,
              //   borderColor: const Color(0xFFD9D9D9),
              //   borderWidth: 1.0,
              //   iconPadding: 8,
              //   borderRadius: 50.0,
              //   labelStyle: AppTextStyles.onboardingBody(
              //     14,
              //     weight: FontWeight.w400,
              //     color: Colors.black87,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushReplacementNamed(context, '/main'),
              // ),
              // const SizedBox(height: 40),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 350,
                    child: Image.asset(
                      AppImages.login,
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                    right: 20,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          color: AppColors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: context.t.termOfService.text1,
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () => _showTermsOfService(context),
                              child: Text(
                                context.t.termOfService.link1,
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: context.t.termOfService.text2,
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () => _showPrivacyPolicy(context),
                              child: Text(
                                context.t.termOfService.link2,
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: context.t.termOfService.text3,
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () => _showCookiesPolicy(context),
                              child: Text(
                                context.t.termOfService.link3,
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          if (TranslationProvider.of(context)
                                  .locale
                                  .languageCode ==
                              'tr')
                            TextSpan(
                              text: context.t.termOfService.text4,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
