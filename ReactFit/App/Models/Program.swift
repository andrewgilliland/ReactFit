
import SwiftUI

struct Program: Hashable {
    let title: String
    let description: String
    let difficulty: Difficulty
    let color: Color
    let weeks: [Week]

    var duration: Int {
        return weeks.count
    }

    var workoutsPerWeek: Int {
        return weeks[0].workouts.count
    }

    static let dbStarterPlan = Program(title: "Beginner Bodybuilding", description: "This is a cool workout program. Get your foot in the door with this workout program.", difficulty: .beginner, color: Theme.cyan400,
                                       weeks:
                                       [Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack]),
                                        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack]),
                                        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack]),
                                        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack])])

    static let bodybuilderBeginner = Program(title: "Intermediate Bodybuilder", description: "Get swole in no time.", difficulty: .intermediate, color: Theme.emerald400, weeks: [
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
    ])

    static let shortcutToSize = Program(title: "Advanced Bodybuilder", description: "Get swoler in no time.", difficulty: .advanced, color: Theme.yellow400, weeks: [
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack, .intermediateBack]),
    ])
}
