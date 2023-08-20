
class WorkoutExercise: Exercise {
    var sets: [Set]

    init(name: String, targetMuscleGroup: MuscleGroup, exerciseType: ExerciseType, equipment: Equipment, mechanics: Mechanics, forceType: ForceType, difficulty: Difficulty, secondaryMuscles: [MuscleGroup], sets: [Set]) {
        self.sets = sets

        super.init(name: name, targetMuscleGroup: targetMuscleGroup, exerciseType: exerciseType, equipment: equipment, mechanics: mechanics, forceType: forceType, difficulty: difficulty, secondaryMuscles: secondaryMuscles)
    }

    static let latPullDown1512108 = WorkoutExercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10), Set(repetitions: 8)])

    static let wideGripPullUp1512108 = WorkoutExercise(name: "Wide Grip Pull Up", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10), Set(repetitions: 8)])

    static let seatedRow1512108 = WorkoutExercise(name: "Seated Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10), Set(repetitions: 8)])

    static let plank304560 = WorkoutExercise(name: "Plank", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .static, difficulty: .beginner, secondaryMuscles: [.lowerBack], sets: [Set(seconds: 30), Set(seconds: 45), Set(seconds: 60)])
}
