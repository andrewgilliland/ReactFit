
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

    static let dbStarterPlan = Program(name: "Beginner Bodybuilding", description: "This is a cool workout program. Get your foot in the door with this workout program.", difficulty: .beginner, color: Theme.indigo700,
                                       weeks:
                                       [Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack]),
                                        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack]),
                                        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack]),
                                        Week(workouts: [.intermediateBack, .intermediateBack, .intermediateBack])])

    static let bodybuilderBeginner = Program(name: "Intermediate Bodybuilder", description: "Get swole in no time.", difficulty: .intermediate, color: Theme.emerald700, weeks: [
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

    static let shortcutToSize = Program(name: "Advanced Bodybuilder", description: "Get swoler in no time.", difficulty: .advanced, color: Theme.yellow700, weeks: [
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
