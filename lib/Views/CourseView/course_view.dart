import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yogiface/Riverpod/Controllers/exercise_state.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Views/CourseView/widgets/countdown_overlay.dart';
import 'package:yogiface/Views/CourseView/widgets/playback_controls.dart';
import 'package:yogiface/Views/CourseView/widgets/rest_timer_widget.dart';
import 'package:yogiface/Views/CourseView/widgets/step_indicator_dots.dart';
import 'package:yogiface/Views/CourseView/widgets/success_overlay.dart';
import 'package:yogiface/Views/CourseView/widgets/video_player_widget.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';

class CourseView extends HookConsumerWidget {
  const CourseView({super.key});

  static const List<Exercise> _sampleExercises = [
    Exercise(
      id: '1',
      title: 'Çift Gıdı Masajı',
      videoUrl: "assets/videos/ciftgidisample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '2',
      title: 'Etkinlik Işıltısı',
      videoUrl: "assets/videos/etkinliksample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '3',
      title: 'Hangover S.O.S',
      videoUrl: "assets/videos/hangoversample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '4',
      title: 'Lifting Masajı',
      videoUrl: "assets/videos/liftingsample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '5',
      title: 'Makyaj Masajı',
      videoUrl: "assets/videos/makyajsample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '6',
      title: 'Regl Ağrısı Rahatlama',
      videoUrl: "assets/videos/reglsample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '7',
      title: 'Sabah Canlanması',
      videoUrl: "assets/videos/ucretsizsabahsample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
    Exercise(
      id: '8',
      title: 'Yanak Masajı',
      videoUrl: "assets/videos/yanaksample.mp4",
      durationSeconds: 30,
      restSeconds: 25,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref
            .read(AllProviders.exerciseProvider.notifier)
            .initialize(_sampleExercises);
      });
      return null;
    }, []);

    final state = ref.watch(AllProviders.exerciseProvider);
    final notifier = ref.read(AllProviders.exerciseProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  if (state.currentExercise != null)
                    VideoPlayerWidget(
                      key: ValueKey(state.currentExercise!.id),
                      videoUrl: state.currentExercise!.videoUrl,
                      stepNumber: state.currentExerciseIndex + 1,
                      totalSteps: state.totalExercises,
                      onBackPressed: () => Navigator.of(context).pop(),
                      onVolumePressed: notifier.toggleMute,
                      isMuted: state.isMuted,
                      isPlaying: state.isPlaying &&
                          state.phase == ExercisePhase.exercise,
                    ),
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
      ),
    );
  }
}
