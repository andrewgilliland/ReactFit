
import SwiftUI

struct Program: Hashable {
    let name: String
    let description: String
    let duration: Int // In weeks
    let difficulty: Difficulty
    let color: Color
    let workouts: [Workout]

//    static let dbStarterPlan = Program(name: "DB Starter Plan", description: "This is a cool workout program. Get your foot in the door with this workout program.", duration: 4, difficulty: .beginner, color: Theme.indigo700, workouts: [.defaultBackWorkout, .defaultCoreWorkout, .defaultBackWorkout])
//
//    static let bodybuilderBeginner = Program(name: "Bodybuilder Beginner", description: "Get swole in no time.", duration: 4, difficulty: .beginner, color: Theme.emerald700, workouts: [.defaultBackWorkout, .defaultCoreWorkout, .defaultBackWorkout])
//
//    static let shortcutToSize = Program(name: "Shortcut to Size", description: "Get swole in no time.", duration: 12, difficulty: .beginner, color: Theme.yellow700, workouts: [.defaultBackWorkout, .defaultCoreWorkout, .defaultBackWorkout])
}
