import SwiftUI

struct WorkoutExerciseRow: View {
    let exercise: WorkoutExercise
    @State private var showModal = false

    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.indigo)
                    .frame(width: 40, height: 40)

                VStack(alignment: .leading) {
                    Text(exercise.name)
                        .font(.custom(Fonts.sourceCodePro, size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.cardHeading)
                    Text(exercise.targetMuscleGroup.rawValue)
                        .font(.custom(Fonts.sourceCodePro, size: 14))
                        .foregroundColor(.cardCopy)
                }

                Spacer()

                Image(systemName: "ellipsis")
                    .onTapGesture {
                        showModal = true
                    }
            }

            .padding(.horizontal, 20)
            .foregroundColor(.white.opacity(0.6))
            .sheet(isPresented: $showModal) {
//                ExerciseModal(exercise: exercise)
            }

            ForEach(exercise.sets.indices, id: \.self) { index in
                let set = exercise.sets[index]

                if let repetitions = set.repetitions {
                    HStack {
                        Text("Set \(index + 1): \(repetitions) reps")
                            .font(.custom(Fonts.sourceCodePro, size: 14))
                        Spacer()
                    }
                    .padding(.top, 8)
                    .padding(.leading, 42)
                } else {
                    if let seconds = set.seconds {
                        HStack {
                            Text("Set \(index + 1): \(seconds) seconds")
                                .font(.custom(Fonts.sourceCodePro, size: 14))
                            Spacer()
                        }
                        .padding(.top, 8)
                        .padding(.leading, 42)
                    }
                }
            }
        }
    }
}

struct WorkoutExerciseRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutExerciseRow(exercise: .latPullDown1512108)
    }
}