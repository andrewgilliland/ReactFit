import Foundation
// https://www.muscleandstrength.com/exercises

// Backend stuff with MongoDB and Vapor
// https://github.com/mongodb/mongo-swift-driver/tree/main/Examples/VaporExample

class Exercise: Identifiable {
    let id = UUID()
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

    // Quads

    static let barbbellBackSquat = Exercise(name: "BarbellBackSquat", targetMuscleGroup: .quads, exerciseType: .strength, equipment: .barbell, mechanics: .compound, forceType: .push, difficulty: .intermediate, secondaryMuscles: [.calves, .glutes, .hamstrings, .lowerBack])

    static let dumbbellGobletSquat = Exercise(name: "Dumbbell Goblet Squat", targetMuscleGroup: .quads, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.abs, .adductors, .calves, .glutes, .hamstrings, .lowerBack])

    static let legExtension = Exercise(name: "Leg Extension", targetMuscleGroup: .quads, exerciseType: .strength, equipment: .machine, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    static let barbellLunge = Exercise(name: "Barbell Lunge", targetMuscleGroup: .quads, exerciseType: .strength, equipment: .barbell, mechanics: .compound, forceType: .push, difficulty: .intermediate, secondaryMuscles: [.calves, .hamstrings, .lowerBack])

    static let bodyweightWalkingLunge = Exercise(name: "Bodyweight Walking Lunge", targetMuscleGroup: .quads, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.calves, .glutes, .hamstrings])

    // Hamstrings

    static let romanianDeadlift = Exercise(name: "Romanian Deadlift", targetMuscleGroup: .hamstrings, exerciseType: .strength, equipment: .barbell, mechanics: .compound, forceType: .hinge, difficulty: .beginner, secondaryMuscles: [.abs, .forearms, .glutes, .lats, .lowerBack, .traps, .upperBack])

    static let legCurls = Exercise(name: "Leg Curl", targetMuscleGroup: .hamstrings, exerciseType: .strength, equipment: .machine, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    static let seatedLegCurl = Exercise(name: "Seated Leg Curl", targetMuscleGroup: .hamstrings, exerciseType: .strength, equipment: .machine, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.glutes])

    // Calves

    static let standingCalfRaise = Exercise(name: "Standing Machine Calf Raise", targetMuscleGroup: .calves, exerciseType: .strength, equipment: .machine, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    static let bodyweightStandingCalfRaise = Exercise(name: "Bodyweight Calf Raise", targetMuscleGroup: .calves, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    static let seatedCalfRaise = Exercise(name: "Seated Calf Raise", targetMuscleGroup: .calves, exerciseType: .strength, equipment: .machine, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    // Back

    static let latPullDown = Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let wideGripPullUp = Exercise(name: "Wide Grip Pull Up", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let seatedRow = Exercise(name: "Seated Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let oneArmDumbbellRow = Exercise(name: "One Arm Dumbbell Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    static let straightArmLatPullDown = Exercise(name: "Straight Arm Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.biceps])

    static let invertedRow = Exercise(name: "Inverted Row", targetMuscleGroup: .upperBack, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.lats, .biceps])

    // Chest

    static let dumbbellBenchPress = Exercise(name: "Dumbbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    static let barbellBenchPress = Exercise(name: "Barbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .barbell, mechanics: .compound, forceType: .push, difficulty: .intermediate, secondaryMuscles: [.shoulders, .triceps])

    static let dumbbellFlys = Exercise(name: "Dumbbell Flys", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    static let inclineBenchPress = Exercise(name: "Incline Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .barbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    static let inclineDumbbellBenchPress = Exercise(name: "Incline Dumbbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    static let standingCableFly = Exercise(name: "Standing Cable Fly", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .cables, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [.shoulders, .triceps])

    // Shoulders

    static let militaryPress = Exercise(name: "Military Press", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .barbell, mechanics: .compound, forceType: .push, difficulty: .intermediate, secondaryMuscles: [.abs, .traps, .triceps])

    static let seatedDumbbellPress = Exercise(name: "Seated Dumbbell Press", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.traps, .triceps])

    static let dumbbellLateralRaise = Exercise(name: "Dumbbell Lateral Raise", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    static let cableFacePull = Exercise(name: "Cable Face Pull", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.traps, .upperBack])

    static let bentOverDumbbellRearDeltRaise = Exercise(name: "Bent Over Dumbbell Rear Delt Raise", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.traps, .triceps])

    static let weightPlateFrontRaise = Exercise(name: "Weight Plate Front Raise", targetMuscleGroup: .shoulders, exerciseType: .strength, equipment: .other, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    // Biceps

    static let standingBarbellCurl = Exercise(name: "Standing Barbell Curl", targetMuscleGroup: .biceps, exerciseType: .strength, equipment: .barbell, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    static let cableCurl = Exercise(name: "Cable Curl", targetMuscleGroup: .biceps, exerciseType: .strength, equipment: .cables, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    static let inclineDumbbellCurl = Exercise(name: "Incline Dumbbell Curl", targetMuscleGroup: .biceps, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.forearms])

    static let dumbbellHammerPreacherCurl = Exercise(name: "Dumbbell Preacher Curl", targetMuscleGroup: .biceps, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [.forearms])

    // Triceps

    static let ropeTricepsExtension = Exercise(name: "Rope Triceps Extension", targetMuscleGroup: .triceps, exerciseType: .strength, equipment: .cables, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    static let tricepsDip = Exercise(name: "Tricep Dip", targetMuscleGroup: .triceps, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .push, difficulty: .beginner, secondaryMuscles: [.chest, .shoulders])

    static let seatedOverheadDumbbellTricepExtension = Exercise(name: "Seated Overhead Tricep Dumbbell Extension", targetMuscleGroup: .triceps, exerciseType: .strength, equipment: .dumbbell, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    static let ezBarSkullcrusher = Exercise(name: "EZ Bar Skullcrusher", targetMuscleGroup: .triceps, exerciseType: .strength, equipment: .ezBar, mechanics: .isolation, forceType: .push, difficulty: .beginner, secondaryMuscles: [])

    // Core

    static let planks = Exercise(name: "Planks", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .static, difficulty: .beginner, secondaryMuscles: [.lowerBack])

    static let lyingLegRaise = Exercise(name: "Lying Leg Raise", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    static let flutterKick = Exercise(name: "Flutter Kick", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .pull, difficulty: .beginner, secondaryMuscles: [])

    static let mountainClimber = Exercise(name: "Mountain Climber", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .isometric, difficulty: .intermediate, secondaryMuscles: [])
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
