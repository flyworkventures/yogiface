import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/utils/app_assets.dart';

class PlaybackControls extends StatelessWidget {
  const PlaybackControls({
    super.key,
    required this.isPlaying,
    required this.onPlayPause,
    required this.onPrevious,
    required this.onNext,
    this.canGoPrevious = true,
    this.canGoNext = true,
  });

  final bool isPlaying;
  final VoidCallback onPlayPause;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final bool canGoPrevious;
  final bool canGoNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ControlButton(
          icon: Image.asset(AppIcons.backwards),
          onPressed: canGoPrevious ? onPrevious : null,
          size: 48,
          iconSize: 28,
        ),
        const SizedBox(width: 32),
        _PlayPauseButton(
          isPlaying: isPlaying,
          onPressed: onPlayPause,
        ),
        const SizedBox(width: 32),
        _ControlButton(
          icon: Image.asset(AppIcons.forwards),
          onPressed: canGoNext ? onNext : null,
          size: 48,
          iconSize: 28,
        ),
      ],
    );
  }
}

class _ControlButton extends StatelessWidget {
  const _ControlButton({
    required this.icon,
    required this.onPressed,
    required this.size,
    required this.iconSize,
  });

  final Widget icon;
  final VoidCallback? onPressed;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null;

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: size,
        height: size,
        child: icon,
      ),
    );
  }
}

class _PlayPauseButton extends StatelessWidget {
  const _PlayPauseButton({
    required this.isPlaying,
    required this.onPressed,
  });

  final bool isPlaying;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 72,
        height: 72,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [
              AppColors.onboardingButtonGradientStart,
              AppColors.onboardingButtonGradientEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.onboardingPurple.withValues(alpha: 0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Image.asset(
          isPlaying ? AppIcons.play : AppIcons.play,
          width: 36,
          height: 36,
        ),
      ),
    );
  }
}
