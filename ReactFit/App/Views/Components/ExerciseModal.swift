import SwiftUI

struct ExerciseModal<T>: View where T: ExerciseOption {
    let exercise: T
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            if let exerciseOption = exercise as? Exercise {
                HStack {
                    Text(exerciseOption.name)
                        .modifier(PrimaryHeading())

                    Spacer()

                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.screenHeading)
                            .font(.system(size: 24))
                    }
                }

                .padding()

            ExerciseDetails(exercise: exercise)
                Spacer()
            } else if let workoutExercise = exercise as? WorkoutExercise {
                HStack {
                    Text(workoutExercise.name)
                        .modifier(PrimaryHeading())

                    Spacer()

                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.screenHeading)
                            .font(.system(size: 24))
                    }
                }

                .padding()

//                ExerciseDetails(exercise: exercise)
                Spacer()
            }
        }
        .background(Theme.indigo950)
    }
}

// struct ModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseModal(exercise: .latPullDown)
//    }
// }

protocol ExerciseOption {}

extension Exercise: ExerciseOption {}
