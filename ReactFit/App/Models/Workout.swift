
struct Workout: Hashable {
    let name: String
    let difficulty: Difficulty
    let exercises: [Exercise]

    static let defaultBackWorkout = Workout(name: "Back Day", difficulty: .intermediate, exercises: [
        Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps], sets: [Set(repetitions: 15), Set(repetitions: 12), Set(repetitions: 10)]),
        .wideGripPullUp,
        .seatedRow,
        .oneArmDumbbellRow,
        .straightArmLatPullDown,
        .invertedRow,
    ])

    static let defaultCoreWorkout = Workout(name: "Core Blast",
                                            difficulty: .intermediate,
                                            exercises: [.plank])
}
