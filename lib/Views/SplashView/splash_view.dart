import 'dart:async';

import 'package:cross_fade/cross_fade.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Views/SplashView/models/splash_info_model.dart';
import 'package:yogiface/Views/SplashView/widgets/splash_widget.dart';
import 'package:yogiface/utils/app_assets.dart';

/// {@template splash_view}
/// SplashView widget - Combined splash screen with initial image and carousel
/// {@endtemplate}
class SplashView extends HookWidget {
  /// {@macro splash_view}
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final showInitialSplash = useState<bool>(true);

    final currentPage = useState<int>(0);
    final autoScrollTimer = useRef<Timer?>(null);
    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () {
        showInitialSplash.value = false;
      });
      return null;
    }, []);

    // Splash sayfaları verisi
    final splashData = [
      SplashInfoModel(
        imagePath: AppImages.splash1,
        title: 'Shape Your Face Naturally',
        description:
            'Work your facial muscles with just a few minutes of daily face exercises. Create a natural, aesthetic, and non-invasive beauty routine.',
      ),
      SplashInfoModel(
        imagePath: AppImages.splash2,
        title: 'Personalized Exercise Plan with Ai',
        description:
            'AI analyzes your facial features, determines your needs, and recommends exercises tailored to you. It tracks which muscles need more work.',
      ),
      SplashInfoModel(
        imagePath: AppImages.splash3,
        title: 'Visible Results',
        description:
            'With regular use, facial contours become more defined, circulation improves, and skin appears more vibrant. Small steps every day bring big changes.',
      ),
    ];

    void startAutoScroll() {
      autoScrollTimer.value?.cancel();
      autoScrollTimer.value = Timer.periodic(
        const Duration(seconds: 3),
        (timer) {
          if (currentPage.value < splashData.length - 1) {
            currentPage.value++;
          } else {
            // Son sayfadaysa başa dön
            currentPage.value = 0;
          }
        },
      );
    }

    void resetAutoScroll() {
      autoScrollTimer.value?.cancel();
      startAutoScroll();
    }

    useEffect(() {
      if (!showInitialSplash.value) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          startAutoScroll();
        });
      }
      return () {
        autoScrollTimer.value?.cancel();
      };
    }, [showInitialSplash.value]);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CrossFade<bool>(
        value: showInitialSplash.value,
        duration: const Duration(milliseconds: 800),
        builder: (context, isInitialSplash) {
          if (isInitialSplash) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashscreen1),
                  fit: BoxFit.cover,
                ),
              ),
            );
          } else {
            return GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                  if (currentPage.value > 0) {
                    currentPage.value--;
                    resetAutoScroll();
                  }
                }
                // Sola kaydırma (sonraki sayfa)
                else if (details.primaryVelocity! < 0) {
                  if (currentPage.value < splashData.length - 1) {
                    currentPage.value++;
                    resetAutoScroll();
                  }
                }
              },
              child: CrossFade<int>(
                value: currentPage.value,
                duration: const Duration(milliseconds: 400),
                builder: (context, page) {
                  return SplashWidget(
                    image: splashData[page].imagePath,
                    title: splashData[page].title,
                    subtitle: splashData[page].description,
                    currentPage: page,
                    totalPages: splashData.length,
                    onGetStarted: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
