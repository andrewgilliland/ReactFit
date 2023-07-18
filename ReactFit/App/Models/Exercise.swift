
// https://www.muscleandstrength.com/exercises

struct Set {
    let repetition: Int?
    let seconds: Int?
}

struct Exercise {
    let name: String
    let targetMuscleGroup: MuscleGroup
    let exerciseType: ExerciseType
    let equipment: Equipment
    let mechanics: Mechanics
    let forceType: ForceType
    let experienceLevel: Difficulty
    let secondaryMuscles: [MuscleGroup]
    var sets: [Set]? // could be a type of seconds or reps
}

extension Exercise: Equatable, Hashable {
    // Needed to Conform to Hashable
    static func == (lhs: Exercise, rhs: Exercise) -> Bool {
        return lhs.name == rhs.name
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
