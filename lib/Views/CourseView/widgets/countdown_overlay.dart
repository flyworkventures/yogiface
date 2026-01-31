import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class CountdownOverlay extends StatelessWidget {
  const CountdownOverlay({
    super.key,
    required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder<double>(
        key: ValueKey(value),
        tween: Tween(begin: 0.5, end: 1.0),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: TweenAnimationBuilder<double>(
              key: ValueKey(value),
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 200),
              builder: (context, opacity, child) {
                return Opacity(
                  opacity: opacity,
                  child: Text(
                    value.toString(),
                    style: AppTextStyles.heading(
                      120,
                      FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
