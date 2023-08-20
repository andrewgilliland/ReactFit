
struct Workout: Hashable {
    let name: String
    let difficulty: Difficulty
    let exercises: [WorkoutExercise]

    static let defaultBackWorkout = Workout(name: "Intermediate Back", difficulty: .intermediate, exercises: [
        .latPullDown1512108,
        .wideGripPullUp1512108,
        .seatedRow1512108,
        .oneArmDumbbellRow1512108,
    ])

    static let defaultCoreWorkout = Workout(name: "Core Blast",
                                            difficulty: .intermediate,
                                            exercises: [.plank304560])
}
