
enum MuscleGroup: String, Hashable {
    case lats = "Lats"
    case chest = "Chest"
    case shoulders = "Shoulders"
    case traps = "Traps"
    case glutes = "Glutess"
    case quads = "Quads"
    case hamstrings = "Hamstrings"
    case hipFlexors = "Hip Flexors"
    case calves = "Calves"
    case abs = "Abs"
    case biceps = "Biceps"
    case triceps = "Triceps"
    case forearms = "Forearms"
    case upperBack = "Upper Back"
    case lowerBack = "Lower Back"

    init(stringLiteral value: String) {
        if let option = Self(rawValue: value) {
            self = option
        } else {
            fatalError("Invalid raw value: \(value)")
        }
    }
}

enum ExerciseType: String {
    case strength
    case olympicWeightlifting
    case warmup
    case cardio
    case smr // Self Myofascial Release
}

enum Equipment: String {
    case bodyweight
    case dumbbell
    case cables
    case barbell
    case machine
    case trx
    case kettleBells
    case foamRoller
}

enum Mechanics: String {
    case compound
    case isolation
}

enum ForceType: String {
    case pull
    case push
    case compression
    case dynamicStretching
}

enum Difficulty: String {
    case beginner
    case intermediate
    case advanced
}
