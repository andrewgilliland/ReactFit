
struct Workout: Hashable {
    let name: String
    let difficulty: Difficulty
    let exercises: [Exercise]

    static let defaultWorkout = Workout(name: "Back Day", difficulty: .intermediate, exercises: [
        Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps]),
        Exercise(name: "Wide Grip Pull Up", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps]),
        Exercise(name: "Seated Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps]),
        Exercise(name: "One Arm Dumbbell Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps]),
        Exercise(name: "Straight Arm Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps]),
        Exercise(name: "Inverted Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps]),
    ])
}
