import SwiftUI

struct ProgramCard: View {
    let program: Program

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(program.title)
                    .modifier(SecondaryHeading())
                    .padding(.bottom, 1)
                Spacer()
            }
            .padding(.leading, 8)

            HStack {
                Text("\(program.description)")
                    .modifier(SecondaryCopy())
                    .padding(.bottom, 2)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 8)

            HStack {
                Text("Workouts per Week: \(program.workoutsPerWeek)")
                    .modifier(SecondaryCopy())
                    .padding(.bottom, 2)
                Spacer()
            }
            .padding(.leading, 8)

            HStack {
                Text("Duration: \(program.duration) weeks")
                    .modifier(SecondaryCopy())
                    .padding(.bottom, 2)
                Spacer()
            }
            .padding(.leading, 8)

            HStack {
                Text("Difficulty:")
                    .modifier(SecondaryCopy())
                DifficultyRating(difficulty: program.difficulty, color: program.color)
                Spacer()
            }
            .padding(.leading, 8)

            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(8)
        .background(program.color.opacity(0.3))
        .cornerRadius(4)
    }
}

struct ProgramCard_Previews: PreviewProvider {
    static var previews: some View {
        ProgramCard(program: .dbStarterPlan)
    }
}
