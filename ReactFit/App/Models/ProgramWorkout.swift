
import Foundation

class Week {
    let id = UUID()
    let workouts: [ProgramWorkout]

    init(workouts: [ProgramWorkout]) {
        self.workouts = workouts
    }
}

extension Week: Equatable, Hashable {
    // Needed to Conform to Equatable
    static func == (lhs: Week, rhs: Week) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

class ProgramWorkout: Workout {
    let date: Date

    init(name: String, difficulty: Difficulty, exercises: [WorkoutExercise], date: Date = Date()) {
        self.date = date
        super.init(name: name, difficulty: difficulty, exercises: exercises)
    }

    override convenience init(name: String, difficulty: Difficulty, exercises: [WorkoutExercise]) {
        self.init(name: name, difficulty: difficulty, exercises: exercises, date: Date())
    }

//    static let defaultBackWorkout = ProgramWorkout(name: "Intermediate Back", difficulty: .intermediate, exercises: [
//        .latPullDown1512108,
//        .wideGripPullUp1512108,
//        .seatedRow1512108,
//        .oneArmDumbbellRow1512108,
//    ])

    static let intermediateBack = ProgramWorkout(name: "Intermediate Back", difficulty: .intermediate, exercises: [.latPullDown1512108, .oneArmDumbbellRow1512108, .seatedRow1512108, .wideGripPullUp1512108])
}
