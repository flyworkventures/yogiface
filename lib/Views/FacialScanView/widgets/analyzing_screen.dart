import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/theme/app_border_radius.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class AnalyzingScreen extends HookWidget {
  const AnalyzingScreen({
    super.key,
    required this.progress,
    this.onComplete,
    this.frontFaceImagePath,
  });

  final double progress;
  final VoidCallback? onComplete;
  final String? frontFaceImagePath;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 3),
    );

    useEffect(() {
      animationController.repeat();
      return null;
    }, []);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Back button and title
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.arrow_back, size: 24),
                ),
                const SizedBox(width: 16),
                Text(
                  'Analyzing',
                  style: AppTextStyles.heading(18, FontWeight.w600),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 280,
              height: 320,
              decoration: BoxDecoration(
                color: const Color(0xFF1A3A3A),
                borderRadius: AppBorderRadius.lgRadius,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (frontFaceImagePath != null)
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: AppBorderRadius.lgRadius,
                        child: Opacity(
                          opacity: 0.3,
                          child: Image.file(
                            File(frontFaceImagePath!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  CustomPaint(
                    size: const Size(280, 320),
                    painter: _GridPainter(),
                  ),
                  Positioned(
                    top: 24,
                    left: 24,
                    child: _CornerBracket(rotation: 0),
                  ),
                  Positioned(
                    top: 24,
                    right: 24,
                    child: _CornerBracket(rotation: 90),
                  ),
                  Positioned(
                    bottom: 24,
                    right: 24,
                    child: _CornerBracket(rotation: 180),
                  ),
                  Positioned(
                    bottom: 24,
                    left: 24,
                    child: _CornerBracket(rotation: 270),
                  ),
                  AnimatedBuilder(
                    animation: animationController,
                    builder: (context, child) {
                      return Positioned(
                        top: 60 + (animationController.value * 200),
                        left: 40,
                        right: 40,
                        child: Container(
                          height: 2,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                const Color(0xFF00FFFF),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Text(
              'Analyzing Your Unique\nFeatures',
              style: AppTextStyles.heading(22, FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Detecting skin texture, muscle tone, and\nfocus area for your personalized routine.',
              style: AppTextStyles.body(
                14,
                color: AppColors.onboardingGreyText,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${(progress * 100).toInt()}%',
                  style: AppTextStyles.body(
                    14,
                    color: AppColors.onboardingPurple,
                    weight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Stack(
                  children: [
                    Container(
                      height: 6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.onboardingGreyLight,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: progress,
                      child: Container(
                        height: 6,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.onboardingButtonGradientStart,
                              AppColors.onboardingButtonGradientEnd,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: AppBorderRadius.pillRadius,
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(3, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: AnimatedBuilder(
                        animation: animationController,
                        builder: (context, child) {
                          final delay = index * 0.2;
                          final animValue =
                              (animationController.value + delay) % 1.0;
                          final opacity =
                              (math.sin(animValue * math.pi * 2) + 1) / 2;
                          return Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppColors.onboardingPurple
                                  .withValues(alpha: 0.3 + opacity * 0.7),
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                      ),
                    );
                  }),
                  const SizedBox(width: 8),
                  Text(
                    'AI ENGINE WORKING',
                    style: AppTextStyles.body(
                      12,
                      weight: FontWeight.w500,
                      color: AppColors.onboardingGreyText,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF2A5050)
      ..strokeWidth = 0.5;

    const spacing = 20.0;

    for (double x = 0; x <= size.width; x += spacing) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y <= size.height; y += spacing) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _CornerBracket extends StatelessWidget {
  const _CornerBracket({required this.rotation});

  final double rotation;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation * math.pi / 180,
      child: SizedBox(
        width: 24,
        height: 24,
        child: CustomPaint(
          painter: _BracketPainter(),
        ),
      ),
    );
  }
}

class _BracketPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF00FFFF)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
