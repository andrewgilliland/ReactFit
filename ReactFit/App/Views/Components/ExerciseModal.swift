import SwiftUI

struct ExerciseModal: View {
    let exercise: Exercise
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(exercise.name)
                    .modifier(PrimaryHeading())

                Spacer()

                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.indigo)
                        .font(.system(size: 24))
                }
            }

            ExerciseDetails(exercise: exercise)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseModal(exercise: Exercise.defaultExercise)
    }
}
