/// Phase of the exercise
enum ExercisePhase {
  idle,
  countdown, // 3, 2, 1 countdown
  exercise, // Video playing
  rest, // Rest period
  completed, // All exercises done
}

/// Model for a single exercise
class Exercise {
  final String id;
  final String title;
  final String videoUrl;
  final int durationSeconds;
  final int restSeconds;

  const Exercise({
    required this.id,
    required this.title,
    required this.videoUrl,
    required this.durationSeconds,
    this.restSeconds = 25,
  });
}

/// State for the exercise player
class ExerciseState {
  final List<Exercise> exercises;
  final int currentExerciseIndex;
  final ExercisePhase phase;
  final int countdownValue;
  final int exerciseTimeRemaining;
  final int restTimeRemaining;
  final bool isPlaying;
  final bool isMuted;

  const ExerciseState({
    required this.exercises,
    this.currentExerciseIndex = 0,
    this.phase = ExercisePhase.idle,
    this.countdownValue = 3,
    this.exerciseTimeRemaining = 0,
    this.restTimeRemaining = 0,
    this.isPlaying = false,
    this.isMuted = false,
  });

  Exercise? get currentExercise {
    if (exercises.isEmpty || currentExerciseIndex >= exercises.length) {
      return null;
    }
    return exercises[currentExerciseIndex];
  }

  int get totalExercises => exercises.length;

  bool get isFirstExercise => currentExerciseIndex == 0;

  bool get isLastExercise => currentExerciseIndex >= exercises.length - 1;

  String get formattedExerciseTime {
    final minutes = (exerciseTimeRemaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (exerciseTimeRemaining % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  String get formattedRestTime {
    return restTimeRemaining.toString();
  }

  double get restProgress {
    final current = currentExercise;
    if (current == null || current.restSeconds == 0) return 0;
    return 1 - (restTimeRemaining / current.restSeconds);
  }

  ExerciseState copyWith({
    List<Exercise>? exercises,
    int? currentExerciseIndex,
    ExercisePhase? phase,
    int? countdownValue,
    int? exerciseTimeRemaining,
    int? restTimeRemaining,
    bool? isPlaying,
    bool? isMuted,
  }) {
    return ExerciseState(
      exercises: exercises ?? this.exercises,
      currentExerciseIndex: currentExerciseIndex ?? this.currentExerciseIndex,
      phase: phase ?? this.phase,
      countdownValue: countdownValue ?? this.countdownValue,
      exerciseTimeRemaining:
          exerciseTimeRemaining ?? this.exerciseTimeRemaining,
      restTimeRemaining: restTimeRemaining ?? this.restTimeRemaining,
      isPlaying: isPlaying ?? this.isPlaying,
      isMuted: isMuted ?? this.isMuted,
    );
  }
}
