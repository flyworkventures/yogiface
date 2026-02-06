import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class SuccessOverlay extends HookWidget {
  const SuccessOverlay({super.key, required this.onAnimationComplete});

  final VoidCallback onAnimationComplete;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    final scaleAnimation = useMemoized(
      () => Tween<double>(begin: 0.5, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.elasticOut),
      ),
      [controller],
    );

    final opacityAnimation = useMemoized(
      () => Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: controller, curve: const Interval(0.0, 0.5)),
      ),
      [controller],
    );

    useEffect(() {
      controller.forward();

      Future.delayed(const Duration(seconds: 3), () {
        onAnimationComplete();
      });

      return null;
    }, [controller]);

    useListenable(controller);

    return Container(
      color: Colors.white.withValues(alpha: 0.95),
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Opacity(
              opacity: opacityAnimation.value,
              child: Transform.scale(
                scale: scaleAnimation.value,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          AppColors.onboardingButtonGradientEnd,
                          AppColors.onboardingButtonGradientStart,
                        ]),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      context.t.courseCompleted,
                      style: AppTextStyles.heading(24, FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      context.t.courseCompletedDescription,
                      style: AppTextStyles.body(
                        16,
                        color: AppColors.onboardingGreyText,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
