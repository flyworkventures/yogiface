import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class ExpandableFaqItem extends HookWidget {
  final String question;
  final String answer;
  final bool initiallyExpanded;

  const ExpandableFaqItem({
    super.key,
    required this.question,
    required this.answer,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(initiallyExpanded);
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
      initialValue: initiallyExpanded ? 1.0 : 0.0,
    );

    final rotationAnimation = useMemoized(
      () => Tween<double>(begin: 0, end: 0.5).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      ),
      [animationController],
    );

    final expansionAnimation = useMemoized(
      () => CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
      [animationController],
    );

    void toggleExpansion() {
      isExpanded.value = !isExpanded.value;
      if (isExpanded.value) {
        animationController.forward();
      } else {
        animationController.reverse();
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.onboardingGreyLight, width: 1),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Question Header
          InkWell(
            onTap: toggleExpansion,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      question,
                      style: AppTextStyles.onboardingBody(
                        14,
                        weight: FontWeight.w700,
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  RotationTransition(
                    turns: rotationAnimation,
                    child: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xFF1A1A1A),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Answer Content
          SizeTransition(
            sizeFactor: expansionAnimation,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                answer,
                style: AppTextStyles.onboardingBody(
                  12,
                  weight: FontWeight.w400,
                  height: 1.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
