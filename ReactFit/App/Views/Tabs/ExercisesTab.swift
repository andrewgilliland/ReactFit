import SwiftUI

struct ExercisesTab: View {
    let exercises: [Exercise] = [
        Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, experienceLevel: .beginner, secondaryMuscles: [.biceps]),
    ]

    var body: some View {
        TabLayout(title: "Exercises", systemImage: "figure.highintensity.intervaltraining") {
            Text("What up?")
        }
    }
}

struct ExercisesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesTab()
    }
}
