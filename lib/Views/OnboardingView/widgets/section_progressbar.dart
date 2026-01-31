import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';

class SectionProgressBar extends StatelessWidget {
  const SectionProgressBar({
    super.key,
    required this.current,
    required this.total,
  });

  final int current;
  final int total;

  @override
  Widget build(BuildContext context) {
    final clampedTotal = total <= 0 ? 1 : total;
    final clampedCurrent = current.clamp(1, clampedTotal);

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(clampedTotal, (index) {
        final isActive = index < clampedCurrent;
        final isFirst = index == 0;
        final isLast = index == clampedTotal - 1;

        return Expanded(
          child: Container(
            height: 6,
            decoration: BoxDecoration(
              color: isActive
                  ? AppColors.onboardingButtonGradientStart
                  : AppColors.onboardingGreyLight,
              borderRadius: BorderRadius.only(
                topLeft: isFirst ? Radius.circular(999) : Radius.zero,
                bottomLeft: isFirst ? Radius.circular(999) : Radius.zero,
                topRight: isLast ? Radius.circular(999) : Radius.zero,
                bottomRight: isLast ? Radius.circular(999) : Radius.zero,
              ),
            ),
          ),
        );
      }),
    );
  }
}
