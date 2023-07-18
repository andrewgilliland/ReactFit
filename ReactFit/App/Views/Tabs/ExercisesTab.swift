import SwiftUI

struct ExercisesTab: View {
    let exercises: [Exercise] = [
        Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, experienceLevel: .beginner, secondaryMuscles: [.biceps]),
        Exercise(name: "Wide Grip Pull Up", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .bodyweight, mechanics: .compound, forceType: .pull, experienceLevel: .beginner, secondaryMuscles: [.biceps]),
        Exercise(name: "Straight Arm Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, experienceLevel: .beginner, secondaryMuscles: [.biceps]),
        Exercise(name: "Dumbbell Bench Press", targetMuscleGroup: .chest, exerciseType: .strength, equipment: .dumbbell, mechanics: .compound, forceType: .push, experienceLevel: .beginner, secondaryMuscles: [.shoulders, .triceps]),
    ]

    var body: some View {
        TabLayout(title: "Exercises", systemImage: "figure.highintensity.intervaltraining") {
            ForEach(exercises, id: \.self) { exercise in
                ExerciseRow(exercise: exercise)
            }
        }
    }
}

struct ExercisesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesTab()
    }
}
