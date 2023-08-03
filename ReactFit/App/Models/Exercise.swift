
// https://www.muscleandstrength.com/exercises

struct Set: Hashable {
    let repetitions: Int?
    let seconds: Int?

    init(repetitions: Int) {
        self.repetitions = repetitions
        seconds = nil
    }

    init(seconds: Int) {
        self.seconds = seconds
        repetitions = nil
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(repetitions)
        hasher.combine(seconds)
    }
}

struct Exercise {
    let name: String
    var description: String?
    let targetMuscleGroup: MuscleGroup
    let exerciseType: ExerciseType
    let equipment: Equipment
    let mechanics: Mechanics
    let forceType: ForceType
    let difficulty: Difficulty
    let secondaryMuscles: [MuscleGroup]
    var sets: [Set]? // could be a type of seconds or reps

    static let defaultExercise = Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])
}

extension Exercise: Equatable, Hashable {
    // Needed to Conform to Equatable
    static func == (lhs: Exercise, rhs: Exercise) -> Bool {
        return lhs.name == rhs.name
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
