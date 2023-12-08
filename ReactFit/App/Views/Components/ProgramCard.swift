import SwiftUI

struct ProgramCard: View {
    let program: Program

    @State private var cardOpen = false

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(program.title)
                        .modifier(SecondaryHeading())
                        .padding(.bottom, 1)
                    Spacer()

                    Image(systemName: "chevron.down.circle")
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.2)) {
                                cardOpen.toggle()
                            }
                        }
                        .rotationEffect(.degrees(cardOpen ? 180 : 0))
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(.leading, 8)

                if cardOpen {
                    VStack {
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
                    }

                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .padding(8)
            .background(program.color)
            .cornerRadius(4)

            RoundedRectangle(cornerRadius: 4)
                .stroke(.white, lineWidth: 2)
        }
    }
}

struct ProgramCard_Previews: PreviewProvider {
    static var previews: some View {
        ProgramCard(program: .dbStarterPlan)
    }
}
