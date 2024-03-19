import SwiftUI

struct ExerciseModalDetails: View {
    let name: String
    let targetMuscleGroup: MuscleGroup
    let secondaryMuscles: [MuscleGroup]
    let difficulty: Difficulty
    let exerciseType: ExerciseType
    let equipment: Equipment
    let mechanics: Mechanics
    let forceType: ForceType

    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .modifier(PrimaryHeading())

                Spacer()
            }
            .padding()

            VStack(alignment: .leading) {
                HStack {
                    Text("Target Muscle Group:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    Text(targetMuscleGroup.rawValue)
                        .modifier(TertiaryCopy())
                }
                .modifier(ExerciseDetailModifier())

                HStack(alignment: .top) {
                    Text("Secondary Muscle Groups:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    VStack(alignment: .trailing) {
                        ForEach(Array(secondaryMuscles), id: \.self) { secondaryMuscle in
                            Text(secondaryMuscle.rawValue)
                                .modifier(TertiaryCopy())
                        }
                    }
                }
                .modifier(ExerciseDetailModifier())

                HStack {
                    Text("Difficulty:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    Text(difficulty.rawValue.capitalized)
                        .modifier(TertiaryCopy())
                }
                .modifier(ExerciseDetailModifier())

                HStack {
                    Text("Exercise Type:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    Text(exerciseType.rawValue.capitalized)
                        .modifier(TertiaryCopy())
                }
                .modifier(ExerciseDetailModifier())

                HStack {
                    Text("Equipment:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    Text(equipment.rawValue.capitalized)
                        .modifier(TertiaryCopy())
                }
                .modifier(ExerciseDetailModifier())

                HStack {
                    Text("Mechanics:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    Text(mechanics.rawValue.capitalized)
                        .modifier(TertiaryCopy())
                }
                .modifier(ExerciseDetailModifier())

                HStack {
                    Text("Force Type:")
                        .modifier(TertiaryCopy())
                    Spacer()
                    Text(forceType.rawValue.capitalized)
                        .modifier(TertiaryCopy())
                }
                .modifier(ExerciseDetailModifier())
            }
            .padding(.horizontal, 18)
        }
    }
}

// struct ExerciseDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseDetails(exercise: .latPullDown)
//    }
// }
