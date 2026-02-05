import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';
import 'package:yogiface/theme/app_border_radius.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class VideoPlayerWidget extends HookWidget {
  const VideoPlayerWidget({
    super.key,
    required this.videoUrl,
    required this.stepNumber,
    required this.totalSteps,
    required this.onBackPressed,
    required this.onVolumePressed,
    required this.isMuted,
    required this.isPlaying,
    this.showControls = false,
  });

  final String videoUrl;
  final int stepNumber;
  final int totalSteps;
  final VoidCallback onBackPressed;
  final VoidCallback onVolumePressed;
  final bool isMuted;
  final bool isPlaying;
  final bool showControls;

  @override
  Widget build(BuildContext context) {
    final videoController = useRef<VideoPlayerController?>(null);
    final chewieController = useRef<ChewieController?>(null);
    final isInitialized = useState(false);
    final isDisposed = useRef(false);

    Future<void> initializeVideo() async {
      if (videoUrl.isEmpty) return;

      try {
        isDisposed.value = false;
        isInitialized.value = false;
        final oldChewie = chewieController.value;
        final oldVideo = videoController.value;
        chewieController.value = null;
        videoController.value = null;

        oldChewie?.dispose();
        oldVideo?.dispose();

        if (videoUrl.startsWith('http')) {
          videoController.value = VideoPlayerController.networkUrl(
            Uri.parse(videoUrl),
          );
        } else {
          videoController.value = VideoPlayerController.asset(videoUrl);
        }

        await videoController.value!.initialize();

        if (isDisposed.value) {
          videoController.value?.dispose();
          return;
        }

        videoController.value!.setLooping(true);
        videoController.value!.setVolume(isMuted ? 0 : 1);

        if (isPlaying && !isDisposed.value) {
          videoController.value!.play();
        }

        chewieController.value = ChewieController(
          videoPlayerController: videoController.value!,
          autoPlay: isPlaying,
          looping: true,
          showControls: false,
          aspectRatio: videoController.value!.value.aspectRatio,
        );

        if (!isDisposed.value) {
          isInitialized.value = true;
        }
      } catch (e) {
        debugPrint('Video initialization error: $e');
      }
    }

    useEffect(() {
      initializeVideo();
      return () {
        isDisposed.value = true;
        final chewie = chewieController.value;
        final video = videoController.value;
        chewieController.value = null;
        videoController.value = null;
        chewie?.dispose();
        video?.dispose();
      };
    }, [videoUrl]);

    useEffect(() {
      if (!isDisposed.value && videoController.value != null) {
        videoController.value?.setVolume(isMuted ? 0 : 1);
      }
      return null;
    }, [isMuted]);

    useEffect(() {
      if (!isDisposed.value &&
          videoController.value != null &&
          videoController.value!.value.isInitialized) {
        if (isPlaying) {
          videoController.value?.play();
        } else {
          videoController.value?.pause();
        }
      }
      return null;
    }, [isPlaying]);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(
        children: [
          if (isInitialized.value && chewieController.value != null)
            Positioned.fill(
              child: FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  width: videoController.value!.value.size.width,
                  height: videoController.value!.value.size.height,
                  child: Chewie(
                    controller: chewieController.value!,
                  ),
                ),
              ),
            )
          else
            Positioned.fill(
              child: Container(
                color: AppColors.onboardingGreyLight,
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColors.onboardingPurple,
                  ),
                ),
              ),
            ),
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CircleButton(
                  icon: Image.asset(AppIcons.backarrow),
                  onPressed: onBackPressed,
                ),
                _CircleButton(
                  icon: Image.asset(AppIcons.sound),
                  onPressed: onVolumePressed,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _InfoBadge(
                  text: '$stepNumber/$totalSteps',
                ),
                _InfoBadge(
                  text: _formatDuration(videoController.value?.value.position),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration? duration) {
    if (duration == null) return '00:00';
    final minutes = duration.inMinutes.toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40,
        height: 40,
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
        child: icon,
      ),
    );
  }
}

class _InfoBadge extends StatelessWidget {
  const _InfoBadge({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.5),
        borderRadius: AppBorderRadius.pillRadius,
      ),
      child: Text(
        text,
        style: AppTextStyles.body(
          12,
          color: Colors.white,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
