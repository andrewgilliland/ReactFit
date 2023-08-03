import SwiftUI

struct ExerciseRow: View {
    let exercise: Exercise
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
                        .foregroundColor(.white)
                    Text(exercise.targetMuscleGroup.rawValue)
                        .font(.custom(Fonts.sourceCodePro, size: 14))
                        .foregroundColor(.white.opacity(0.6))
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
                ExerciseModal(exercise: exercise)
            }

            if let sets = exercise.sets {
                ForEach(sets.indices, id: \.self) { index in
                    let set = sets[index]

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
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRow(exercise: Exercise.defaultExercise)
    }
}
