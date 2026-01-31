import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Views/CourseView/providers/exercise_state.dart';

/// Provider for exercise state
final exerciseProvider =
    StateNotifierProvider.autoDispose<ExerciseNotifier, ExerciseState>((ref) {
  return ExerciseNotifier();
});

/// Notifier for managing exercise state
class ExerciseNotifier extends StateNotifier<ExerciseState> {
  ExerciseNotifier() : super(const ExerciseState(exercises: []));

  Timer? _timer;

  /// Initialize with exercises
  void initialize(List<Exercise> exercises) {
    _timer?.cancel();
    state = ExerciseState(
      exercises: exercises,
      currentExerciseIndex: 0,
      phase: ExercisePhase.idle,
      exerciseTimeRemaining:
          exercises.isNotEmpty ? exercises[0].durationSeconds : 0,
      restTimeRemaining: exercises.isNotEmpty ? exercises[0].restSeconds : 0,
    );
  }

  /// Start the exercise session (begins with countdown)
  void start() {
    if (state.exercises.isEmpty) return;

    state = state.copyWith(
      phase: ExercisePhase.countdown,
      countdownValue: 3,
      isPlaying: true,
    );
    _startCountdown();
  }

  /// Start 3-2-1 countdown
  void _startCountdown() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.countdownValue > 1) {
        state = state.copyWith(countdownValue: state.countdownValue - 1);
      } else {
        timer.cancel();
        _startExercise();
      }
    });
  }

  /// Start the exercise phase
  void _startExercise() {
    final current = state.currentExercise;
    if (current == null) return;

    state = state.copyWith(
      phase: ExercisePhase.exercise,
      exerciseTimeRemaining: current.durationSeconds,
      isPlaying: true,
    );
    _startExerciseTimer();
  }

  /// Exercise countdown timer
  void _startExerciseTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!state.isPlaying) return;

      if (state.exerciseTimeRemaining > 1) {
        state = state.copyWith(
          exerciseTimeRemaining: state.exerciseTimeRemaining - 1,
        );
      } else {
        timer.cancel();
        // If last exercise, skip rest and complete
        // If last exercise, skip rest and complete
        if (state.isLastExercise) {
          state = state.copyWith(
            phase: ExercisePhase.completed,
            isPlaying: false,
          );
        } else {
          _startRest();
        }
      }
    });
  }

  /// Start rest phase
  void _startRest() {
    final current = state.currentExercise;
    if (current == null) return;

    state = state.copyWith(
      phase: ExercisePhase.rest,
      restTimeRemaining: current.restSeconds,
    );
    _startRestTimer();
  }

  /// Rest countdown timer
  void _startRestTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!state.isPlaying) return;

      if (state.restTimeRemaining > 1) {
        state = state.copyWith(
          restTimeRemaining: state.restTimeRemaining - 1,
        );
      } else {
        timer.cancel();
        _moveToNextExercise();
      }
    });
  }

  /// Move to next exercise or complete
  void _moveToNextExercise() {
    if (state.isLastExercise) {
      state = state.copyWith(
        phase: ExercisePhase.completed,
        isPlaying: false,
      );
      _timer?.cancel();
    } else {
      final nextIndex = state.currentExerciseIndex + 1;
      final nextExercise = state.exercises[nextIndex];

      state = state.copyWith(
        currentExerciseIndex: nextIndex,
        phase: ExercisePhase.countdown,
        countdownValue: 3,
        exerciseTimeRemaining: nextExercise.durationSeconds,
        restTimeRemaining: nextExercise.restSeconds,
      );
      _startCountdown();
    }
  }

  /// Toggle play/pause
  void togglePlayPause() {
    state = state.copyWith(isPlaying: !state.isPlaying);

    if (state.isPlaying) {
      // Resume the appropriate timer
      switch (state.phase) {
        case ExercisePhase.countdown:
          _startCountdown();
          break;
        case ExercisePhase.exercise:
          _startExerciseTimer();
          break;
        case ExercisePhase.rest:
          _startRestTimer();
          break;
        default:
          break;
      }
    } else {
      _timer?.cancel();
    }
  }

  /// Go to next exercise
  void nextExercise() {
    _timer?.cancel();
    if (!state.isLastExercise) {
      final nextIndex = state.currentExerciseIndex + 1;
      final nextExercise = state.exercises[nextIndex];

      state = state.copyWith(
        currentExerciseIndex: nextIndex,
        phase: ExercisePhase.countdown,
        countdownValue: 3,
        exerciseTimeRemaining: nextExercise.durationSeconds,
        restTimeRemaining: nextExercise.restSeconds,
        isPlaying: true,
      );
      _startCountdown();
    }
  }

  /// Go to previous exercise
  void previousExercise() {
    _timer?.cancel();
    if (!state.isFirstExercise) {
      final prevIndex = state.currentExerciseIndex - 1;
      final prevExercise = state.exercises[prevIndex];

      state = state.copyWith(
        currentExerciseIndex: prevIndex,
        phase: ExercisePhase.countdown,
        countdownValue: 3,
        exerciseTimeRemaining: prevExercise.durationSeconds,
        restTimeRemaining: prevExercise.restSeconds,
        isPlaying: true,
      );
      _startCountdown();
    }
  }

  /// Toggle mute
  void toggleMute() {
    state = state.copyWith(isMuted: !state.isMuted);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
