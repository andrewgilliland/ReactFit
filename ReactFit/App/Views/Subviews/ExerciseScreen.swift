import SwiftUI

struct ExerciseScreen: View {
    let muscleGroup: MuscleGroup
    let exercises: [Exercise]

    var body: some View {
        TabLayout(title: muscleGroup.rawValue) {
            VStack {
                ForEach(exercises, id: \.self) { exercise in
                    ExerciseView(exercise: exercise)
                }
            }
        }
    }
}

struct ExerciseScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseScreen(muscleGroup: .lats, exercises: [.latPullDown])
    }
}
