
import SwiftUI

struct Program: Hashable {
    let name: String
    let description: String
    let difficulty: Difficulty
    let color: Color
    let weeks: [Week]

    var duration: Int {
        return weeks.count
    }

    static let dbStarterPlan = Program(name: "DB Starter Plan", description: "This is a cool workout program. Get your foot in the door with this workout program.", difficulty: .beginner, color: Theme.indigo700, weeks: [Week(workouts: [.BackWorkout, .BackWorkout]), Week(workouts: [.BackWorkout, .BackWorkout])])

    static let bodybuilderBeginner = Program(name: "Bodybuilder Beginner", description: "Get swole in no time.", difficulty: .intermediate, color: Theme.emerald700, weeks: [
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout])])

    static let shortcutToSize = Program(name: "Shortcut to Size", description: "Get swole in no time.", difficulty: .advanced, color: Theme.yellow700, weeks: [
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
        Week(workouts: [.BackWorkout, .BackWorkout, .BackWorkout, .BackWorkout]),
    ])
}
