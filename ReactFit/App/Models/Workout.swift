
class Workout {
    let name: String
    let difficulty: Difficulty
    let exercises: [WorkoutExercise]

    var totalSets: Int {
        exercises.reduce(0) { partialSum, exercise in
            partialSum + exercise.sets.count
        }
    }

    init(name: String, difficulty: Difficulty, exercises: [WorkoutExercise]) {
        self.name = name
        self.difficulty = difficulty
        self.exercises = exercises
    }

    static let defaultBackWorkout = Workout(name: "Intermediate Back", difficulty: .intermediate, exercises: [
        .latPullDown1512108,
        .wideGripPullUp1512108,
        .seatedRow1512108,
        .oneArmDumbbellRow1512108,
    ])

    static let defaultCoreWorkout = Workout(name: "Core Blast",
                                            difficulty: .intermediate,
                                            exercises: [.plank304560])

    static let pushLevelOne = Workout(name: "Push Level 1", difficulty: .beginner, exercises: [
        WorkoutExercise(name: "Dumbbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10)]),
        WorkoutExercise(name: "Dumbbell Lateral Raise", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10)]),
        WorkoutExercise(name: "Seated Dumbbell Press", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.traps, .triceps], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10)]),
        WorkoutExercise(name: "Rope Triceps Extension", targetMuscleGroup: .triceps, exerciseType: .strength, equipment: .cables, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10)]),

    ])
}

extension Workout: Equatable, Hashable {
    // Needed to Conform to Equatable
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.name == rhs.name
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
