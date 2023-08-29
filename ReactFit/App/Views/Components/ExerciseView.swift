import SwiftUI

struct ExerciseView: View {
    let exercise: Exercise
    @State private var showModal = false

    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Theme.indigo500, Theme.indigo900]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 40, height: 40)

                VStack(alignment: .leading) {
                    Text(exercise.name)
                        .font(.custom(Fonts.sourceCodePro, size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.cardHeading)
                        .lineLimit(1)
                    Text(exercise.targetMuscleGroup.rawValue)
                        .font(.custom(Fonts.sourceCodePro, size: 14))
                        .foregroundColor(.cardCopy)
                }

                Spacer()

                Image(systemName: "ellipsis")
                    .frame(width: 40, height: 40)
                    .onTapGesture {
                        simpleHaptics()
                        showModal = true
                    }
            }
            .padding(.horizontal, 20)
            .foregroundColor(.white.opacity(0.6))
            .sheet(isPresented: $showModal) {
                ExerciseModal(exercise: exercise)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(exercise: .dumbbellBenchPress)
    }
}
