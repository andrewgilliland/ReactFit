
// https://www.muscleandstrength.com/exercises

class Exercise {
    let name: String
    let targetMuscleGroup: MuscleGroup
    let exerciseType: ExerciseType
    let equipment: Equipment
    let mechanics: Mechanics
    let forceType: ForceType
    let difficulty: Difficulty
    let secondaryMuscles: [MuscleGroup]

    init(name: String, targetMuscleGroup: MuscleGroup, exerciseType: ExerciseType, equipment: Equipment, mechanics: Mechanics, forceType: ForceType, difficulty: Difficulty, secondaryMuscles: [MuscleGroup]) {
        self.name = name
        self.targetMuscleGroup = targetMuscleGroup
        self.exerciseType = exerciseType
        self.equipment = equipment
        self.mechanics = mechanics
        self.forceType = forceType
        self.difficulty = difficulty
        self.secondaryMuscles = secondaryMuscles
    }

    static let latPullDown = Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let wideGripPullUp = Exercise(name: "Wide Grip Pull Up", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let seatedRow = Exercise(name: "Seated Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let oneArmDumbbellRow = Exercise(name: "One Arm Dumbbell Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let straightArmLatPullDown = Exercise(name: "Straight Arm Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let dumbbellBenchPress = Exercise(name: "Dumbbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    static let invertedRow = Exercise(name: "Inverted Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])
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
