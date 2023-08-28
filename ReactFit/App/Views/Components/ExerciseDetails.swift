import SwiftUI

// ExerciseModalDetails
struct ExerciseDetails: View {
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
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    Text(targetMuscleGroup.rawValue)
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)

                HStack(alignment: .top) {
                    Text("Secondary Muscle Groups:")
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    VStack(alignment: .trailing) {
                        ForEach(Array(secondaryMuscles), id: \.self) { secondaryMuscle in
                            Text(secondaryMuscle.rawValue)
                                .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                        }
                    }
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)

                HStack {
                    Text("Difficulty:")
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    Text(difficulty.rawValue.capitalized)
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)

                HStack {
                    Text("Exercise Type:")
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    Text(exerciseType.rawValue.capitalized)
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)

                HStack {
                    Text("Equipment:")
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    Text(equipment.rawValue.capitalized)
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)

                HStack {
                    Text("Mechanics:")
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    Text(mechanics.rawValue.capitalized)
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)

                HStack {
                    Text("Force Type:")
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                    Spacer()
                    Text(forceType.rawValue.capitalized)
                        .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.white).fontWeight(.semibold)
                }
                .padding()
                .background(Theme.indigo800)
                .cornerRadius(8)
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
