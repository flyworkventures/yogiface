import 'package:flutter/material.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class SplashWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback? onGetStarted;
  final int currentPage;
  final int totalPages;

  const SplashWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onGetStarted,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 0.55; // Ekranın %55'i resim için

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Üst kısım - Resim (alt kısmı rounded)
          Container(
            height: imageHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
          ),

          // Alt kısım - İçerik
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 24),

                  // Dot Indicators (animasyonlu)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      totalPages,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: index == currentPage ? 32 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: index == currentPage
                              ? const Color(0xFFE8A7F2) // Mor renk (aktif)
                              : const Color(0xFFD9D9D9), // Gri renk (pasif)
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  // Title
                  Text(
                    title,
                    style: AppTextStyles.onboardingBody(
                      22,
                      letterSpacing: 0.2,
                      height: 1.3,
                      weight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  // Subtitle
                  Text(
                    subtitle,
                    style: AppTextStyles.onboardingBody(
                      16,
                      letterSpacing: 0.1,
                      height: 1.3,
                      weight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 4,
                  ),

                  // Get Started Button
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                height: 49,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFC9A8FF),
                      Color(0xFFE8A7F2),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: onGetStarted,
                    borderRadius: BorderRadius.circular(50),
                    child: Center(
                      child: Text(
                        context.t.get_started,
                        style: const TextStyle(
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
    );
  }
}
