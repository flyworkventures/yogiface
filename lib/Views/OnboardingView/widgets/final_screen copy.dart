import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/extension.dart';

class FinalScreen extends HookWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Background pulsing animation
    final backgroundController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    final backgroundScale = useMemoized(
      () => Tween<double>(begin: 0.95, end: 1.05).animate(
        CurvedAnimation(
          parent: backgroundController,
          curve: Curves.easeInOut,
        ),
      ),
      [backgroundController],
    );

    // Icon 1 animation (Heart)
    final icon1Controller = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );

    final icon1Scale = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: icon1Controller,
          curve: Curves.elasticOut,
        ),
      ),
      [icon1Controller],
    );

    final icon1Opacity = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: icon1Controller,
          curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
        ),
      ),
      [icon1Controller],
    );

    // Icon 2 animation (Profile)
    final icon2Controller = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );

    final icon2Scale = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: icon2Controller,
          curve: Curves.elasticOut,
        ),
      ),
      [icon2Controller],
    );

    final icon2Opacity = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: icon2Controller,
          curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
        ),
      ),
      [icon2Controller],
    );

    // Icon 3 animation (Setting)
    final icon3Controller = useAnimationController(
      duration: const Duration(milliseconds: 600),
    );

    final icon3Scale = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: icon3Controller,
          curve: Curves.elasticOut,
        ),
      ),
      [icon3Controller],
    );

    final icon3Opacity = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: icon3Controller,
          curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
        ),
      ),
      [icon3Controller],
    );

    // Floating animation
    final floatingController = useAnimationController(
      duration: const Duration(milliseconds: 3000),
    )..repeat(reverse: true);

    final floatingAnimation = useMemoized(
      () => Tween<double>(begin: -8.0, end: 8.0).animate(
        CurvedAnimation(
          parent: floatingController,
          curve: Curves.easeInOut,
        ),
      ),
      [floatingController],
    );

    // Staggered animation start
    useEffect(() {
      Future.delayed(const Duration(milliseconds: 300), () {
        icon1Controller.forward();
      });
      Future.delayed(const Duration(milliseconds: 450), () {
        icon2Controller.forward();
      });
      Future.delayed(const Duration(milliseconds: 600), () {
        icon3Controller.forward();
      });
      return null;
    }, []);

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.xl),

          // Kadın fotoğrafı
          Container(
            height: context.height * 0.28,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.female3),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.lg),

          // Başlık
          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.creatingPersonalizedProfile,
              style: AppTextStyles.onboardingBody(
                24,
                height: 1,
                weight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),

          // Alt metin
          Align(
            alignment: Alignment.center,
            child: Text(
              context.t.onboarding.tailoringExperience,
              textAlign: TextAlign.center,
              style: AppTextStyles.onboardingBody(
                18,
                height: 1,
                weight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: context.height * 0.03),

          // İkon grubu - Animated
          LayoutBuilder(
            builder: (context, constraints) {
              final iconGroupSize = constraints.maxWidth * 0.55;
              final iconSize = iconGroupSize * 0.30;

              return Center(
                child: SizedBox(
                  width: iconGroupSize.clamp(180.0, 220.0),
                  height: iconGroupSize.clamp(180.0, 220.0),
                  child: AnimatedBuilder(
                    animation: Listenable.merge([
                      backgroundController,
                      floatingController,
                    ]),
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, floatingAnimation.value),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Arka plan mor daire - Pulsing
                            Transform.scale(
                              scale: backgroundScale.value,
                              child: Image.asset(
                                AppIcons.circlebackground,
                                width: iconGroupSize.clamp(180.0, 220.0),
                                height: iconGroupSize.clamp(180.0, 220.0),
                                fit: BoxFit.contain,
                              ),
                            ),
                            // İkonlar - Staggered animation
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Heart Icon
                                AnimatedBuilder(
                                  animation: icon1Controller,
                                  builder: (context, child) {
                                    return Opacity(
                                      opacity: icon1Opacity.value,
                                      child: Transform.scale(
                                        scale: icon1Scale.value,
                                        child: Image.asset(
                                          AppIcons.heart,
                                          width: iconSize.clamp(50.0, 69.0),
                                          height: iconSize.clamp(50.0, 68.0),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(width: iconGroupSize * 0.035),
                                // Profile Icon
                                AnimatedBuilder(
                                  animation: icon2Controller,
                                  builder: (context, child) {
                                    return Opacity(
                                      opacity: icon2Opacity.value,
                                      child: Transform.scale(
                                        scale: icon2Scale.value,
                                        child: Image.asset(
                                          AppIcons.profile,
                                          width: iconSize.clamp(50.0, 69.0),
                                          height: iconSize.clamp(50.0, 68.0),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(width: iconGroupSize * 0.035),
                                // Setting Icon
                                AnimatedBuilder(
                                  animation: icon3Controller,
                                  builder: (context, child) {
                                    return Opacity(
                                      opacity: icon3Opacity.value,
                                      child: Transform.scale(
                                        scale: icon3Scale.value,
                                        child: Image.asset(
                                          AppIcons.setting,
                                          width: iconSize.clamp(50.0, 69.0),
                                          height: iconSize.clamp(50.0, 68.0),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
