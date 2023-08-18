
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

    static let latPullDown = Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let wideGripPullUp = Exercise(name: "Wide Grip Pull Up", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let seatedRow = Exercise(name: "Seated Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let oneArmDumbbellRow = Exercise(name: "One Arm Dumbbell Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let straightArmLatPullDown = Exercise(name: "Straight Arm Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let dumbbellBenchPress = Exercise(name: "Dumbbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    static let invertedRow = Exercise(name: "Inverted Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let plank = Exercise(name: "Plank", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .static, difficulty: .beginner, secondaryMuscles: [.lowerBack], sets: [Set(seconds: 30), Set(seconds: 45), Set(seconds: 60)])
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
