
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
