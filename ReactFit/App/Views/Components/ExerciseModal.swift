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
                        .foregroundColor(.screenHeading)
                        .font(.system(size: 24))
                }
            }

            .padding()

            ExerciseDetails(exercise: exercise)
            Spacer()
        }
        .background(Theme.indigo950)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseModal(exercise: .latPullDown)
    }
}
