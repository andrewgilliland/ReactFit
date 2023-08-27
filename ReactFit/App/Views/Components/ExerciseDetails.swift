import SwiftUI

// ExerciseModalDetails
struct ExerciseDetails: View {
    let exercise: Exercise

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Target Muscle Group:")
                Spacer()
                Text(exercise.targetMuscleGroup.rawValue)
            }

            HStack {
                Text("Secondary Muscle Groups:")
                Spacer()
                ForEach(Array(exercise.secondaryMuscles), id: \.self) { secondaryMuscle in
                    Text(secondaryMuscle.rawValue)
                }
            }

            HStack {
                Text("Difficulty:")
                Spacer()
                Text(exercise.difficulty.rawValue)
            }

            HStack {
                Text("Exercise Type:")
                Spacer()
                Text(exercise.exerciseType.rawValue)
            }

            HStack {
                Text("Equipment:")
                Spacer()
                Text(exercise.equipment.rawValue)
            }

            HStack {
                Text("Mechanics:")
                Spacer()
                Text(exercise.mechanics.rawValue)
            }

            HStack {
                Text("Force Type:")
                Spacer()
                Text(exercise.forceType.rawValue)
            }
        }
        .padding(.horizontal, 18)
    }
}

struct ExerciseDetails_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetails(exercise: .latPullDown)
    }
}
