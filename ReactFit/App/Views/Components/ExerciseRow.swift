import SwiftUI

struct ExerciseRow: View {
    let exercise: Exercise
    @State private var showModal = false

    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.indigo)
                .frame(width: 40, height: 40)

            VStack(alignment: .leading) {
                Text(exercise.name)
                    .font(.custom("SourceCodePro-SemiBold", size: 16))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text(exercise.targetMuscleGroup.rawValue)
                    .font(.custom("SourceCodePro-SemiBold", size: 14))
                    .foregroundColor(.white.opacity(0.6))
            }

            Spacer()

            Image(systemName: "ellipsis")
        }
        .onTapGesture {
            showModal = true
        }
        .padding(.horizontal, 20)
        .foregroundColor(.white.opacity(0.6))
        .sheet(isPresented: $showModal) {
            ExerciseModal(exercise: exercise)
        }
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRow(exercise: Exercise.defaultExercise)
    }
}
