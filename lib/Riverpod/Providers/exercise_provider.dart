import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yogiface/Riverpod/Controllers/exercise_state.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';

class ToggleFavoriteNotifier extends StateNotifier<AsyncValue<void>> {
  ToggleFavoriteNotifier(this.ref) : super(const AsyncValue.data(null));
  final Ref ref;

  Future<void> toggleFavorite({
    required int id,
    required bool isFavorited,
  }) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(AllProviders.exerciseRepositoryProvider);
      await repository.toggleFavorite(id: id, isFavorited: isFavorited);

      // Invalidate the exercises providers to refresh the data
      ref.invalidate(AllProviders.allExercisesProvider);
      ref.invalidate(AllProviders.favoriteExercisesProvider);
      ref.invalidate(AllProviders.exerciseByIdProvider);

      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

// ============================================================================
// Exercise Session Providers (for in-app exercise tracking)
// ============================================================================

class ExerciseNotifier extends StateNotifier<ExerciseState> {
  ExerciseNotifier() : super(const ExerciseState(exercises: []));

  Timer? _timer;

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

  void start() {
    if (state.exercises.isEmpty) return;

    state = state.copyWith(
      phase: ExercisePhase.countdown,
      countdownValue: 3,
      isPlaying: true,
    );
    _startCountdown();
  }

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

  void _startRest() {
    final current = state.currentExercise;
    if (current == null) return;

    state = state.copyWith(
      phase: ExercisePhase.rest,
      restTimeRemaining: current.restSeconds,
    );
    _startRestTimer();
  }

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

  void togglePlayPause() {
    state = state.copyWith(isPlaying: !state.isPlaying);

    if (state.isPlaying) {
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

  void toggleMute() {
    state = state.copyWith(isMuted: !state.isMuted);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
