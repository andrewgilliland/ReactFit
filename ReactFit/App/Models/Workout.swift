
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
