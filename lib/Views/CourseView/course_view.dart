import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Repositories/exercise_repository.dart';
import 'package:yogiface/Riverpod/Controllers/exercise_state.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/CourseView/widgets/countdown_overlay.dart';
import 'package:yogiface/Views/CourseView/widgets/playback_controls.dart';
import 'package:yogiface/Views/CourseView/widgets/rest_timer_widget.dart';
import 'package:yogiface/Views/CourseView/widgets/step_indicator_dots.dart';
import 'package:yogiface/Views/CourseView/widgets/success_overlay.dart';
import 'package:yogiface/Views/CourseView/widgets/video_player_widget.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/print.dart';

class CourseView extends HookConsumerWidget {
  final int courseId;
  const CourseView({super.key, required this.courseId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(true);
    final exerciseRepository = ref.read(exerciseRepositoryProvider);

    useEffect(() {
      Future.microtask(() async {
        try {
          // Fetch exercise data from repository
          final response = await exerciseRepository.getExerciseById(
            id: courseId,
            lang: LocaleSettings.currentLocale.languageCode,
          );

          final exerciseData = response.data.exercise;
          if (exerciseData != null) {
            final durationSeconds = exerciseData.durationMinutes * 60;
            Print.info(durationSeconds, tag: 'durationSeconds');
            // Create 8 sets of the same exercise with 30s exercise and 25s rest
            final exercises = List.generate(8, (index) {
              return Exercise(
                id: '${exerciseData.id}_set_${index + 1}',
                title: exerciseData.title ?? 'Exercise',
                videoUrl: exerciseData.videoCdnPath,
                durationSeconds: 30,
                restSeconds: 25,
              );
            });

            ref
                .read(AllProviders.exerciseProvider.notifier)
                .initialize(exercises);
          }
        } catch (e) {
          print('Error loading exercise: $e');
        } finally {
          isLoading.value = false;
        }
      });
      return null;
    }, []);

    final state = ref.watch(AllProviders.exerciseProvider);
    final notifier = ref.read(AllProviders.exerciseProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // The UI column (video area + controls)
            Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    // Only show the video here; overlays moved to the top-level stack
                    child: state.currentExercise != null
                        ? VideoPlayerWidget(
                            key: ValueKey(state.currentExercise!.id),
                            videoUrl: state.currentExercise!.videoUrl,
                            stepNumber: state.currentExerciseIndex + 1,
                            totalSteps: state.totalExercises,
                            onBackPressed: () => Navigator.of(context).pop(),
                            onVolumePressed: notifier.toggleMute,
                            isMuted: state.isMuted,
                            isPlaying: state.isPlaying &&
                                state.phase == ExercisePhase.exercise,
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        StepIndicatorDots(
                          totalSteps: state.totalExercises,
                          currentStep: state.currentExerciseIndex,
                        ),
                        const Spacer(),
                        Text(
                          state.currentExercise?.title ?? '',
                          style: AppTextStyles.onboardingBody(22,
                              weight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Text(
                          state.phase == ExercisePhase.rest
                              ? '00:${state.restTimeRemaining.toString().padLeft(2, '0')}'
                              : state.formattedExerciseTime,
                          style: AppTextStyles.heading(
                            48,
                            FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        PlaybackControls(
                          isPlaying: state.isPlaying,
                          onPlayPause: () {
                            if (state.phase == ExercisePhase.idle) {
                              notifier.start();
                            } else {
                              notifier.togglePlayPause();
                            }
                          },
                          onPrevious: notifier.previousExercise,
                          onNext: notifier.nextExercise,
                          canGoPrevious: !state.isFirstExercise,
                          canGoNext: !state.isLastExercise,
                        ),
                        const Spacer(flex: 3),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Overlays moved here so they cover the whole SafeArea (entire screen)
            if (state.phase == ExercisePhase.countdown)
              Positioned.fill(
                child: Container(
                  color: Colors.black.withValues(alpha: 0.5),
                  child: CountdownOverlay(value: state.countdownValue),
                ),
              ),
            if (state.phase == ExercisePhase.rest)
              Positioned.fill(
                child: Container(
                  color: Colors.white.withValues(alpha: 0.9),
                  child: RestTimerWidget(
                    remainingSeconds: state.restTimeRemaining,
                    progress: state.restProgress,
                  ),
                ),
              ),
            if (state.phase == ExercisePhase.completed)
              Positioned.fill(
                child: SuccessOverlay(
                  onAnimationComplete: () {
                    Future.delayed(const Duration(seconds: 1), () {
                      if (context.mounted) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/main',
                          (route) => false,
                        );
                      }
                    });
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
