import SwiftUI

struct MuscleGroupCard: View {
    let muscleGroup: MuscleGroup

    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text(muscleGroup.rawValue)
                        .modifier(SecondaryHeading())
                        .padding(.bottom, 2)
                    Spacer()
                }
                .padding(.leading, 8)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .padding(8)
            .background(Theme.emerald300)
            .cornerRadius(4)

            RoundedRectangle(cornerRadius: 4)
                .stroke(.white, lineWidth: 2)
        }
    }
}

#Preview {
    MuscleGroupCard(muscleGroup: MuscleGroup.biceps)
}
