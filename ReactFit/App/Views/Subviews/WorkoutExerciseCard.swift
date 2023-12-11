import SwiftUI

struct WorkoutExerciseCard: View {
    let exercise: WorkoutExercise
    let index: Int
    @State private var showModal = false

    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Theme.indigo500, Theme.indigo900]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(4)
                        .frame(width: 40, height: 40)

                    Text("\(index)")
                        .font(.custom(Fonts.sourceCodePro, size: 16))
                        .foregroundColor(.cardHeading)
                }

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
        .padding(.top, 8)
        .padding(.bottom, 8)
        .background(Theme.indigo700.opacity(0.3))
        .cornerRadius(4)
    }
}

struct WorkoutExerciseRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutExerciseCard(exercise: .latPullDown1512108, index: 1)
    }
}
