import SwiftUI

struct WorkoutExerciseCard: View {
    let exercise: WorkoutExercise
    let index: Int
    @State private var showModal = false

    var body: some View {
        ZStack {
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(.black)
                            .cornerRadius(4)
                            .frame(width: 40, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(.white, lineWidth: 2)
                            )

                        Text("\(index)")
                            .font(.custom(Fonts.sourceCodePro, size: 16))
                            .foregroundColor(.white)
                    }

                    VStack(alignment: .leading) {
                        Text(exercise.name)
                            .font(.custom(Fonts.sourceCodePro, size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Text(exercise.targetMuscleGroup.rawValue)
                            .font(.custom(Fonts.sourceCodePro, size: 14))
                            .foregroundColor(.black)
                    }

                    Spacer()

                    Image(systemName: "ellipsis.circle")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .onTapGesture {
                            simpleHaptics()
                            showModal = true
                        }
                }

                .padding(.horizontal, 20)
                .sheet(isPresented: $showModal) {
                    ExerciseModal(exercise: exercise)
                }

                ForEach(exercise.sets.indices, id: \.self) { index in
                    let set = exercise.sets[index]

                    if let repetitions = set.repetitions {
                        HStack {
                            Text("Set \(index + 1): \(repetitions) reps")
                                .font(.custom(Fonts.sourceCodePro, size: 14))
                                .foregroundStyle(.black)
                                .fontWeight(.semibold)

                            Spacer()
                        }
                        .padding(.top, 8)
                        .padding(.leading, 42)
                    } else {
                        if let seconds = set.seconds {
                            HStack {
                                Text("Set \(index + 1): \(seconds) seconds")
                                    .font(.custom(Fonts.sourceCodePro, size: 14))
                                    .foregroundStyle(.black)
                                    .fontWeight(.semibold)

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
            .background(Theme.pink400)
            .cornerRadius(4)

            RoundedRectangle(cornerRadius: 4)
                .stroke(.white, lineWidth: 2)
        }
    }
}

struct WorkoutExerciseRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutExerciseCard(exercise: .latPullDown1512108, index: 1)
    }
}
