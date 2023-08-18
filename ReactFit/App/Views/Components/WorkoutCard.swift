import SwiftUI

struct WorkoutCard: View {
    let workout: Workout

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(workout.name)
                    .modifier(SecondaryHeading())
                    .padding(.bottom, 2)
                Spacer()
            }
            .padding(.leading, 8)

            HStack {
                DifficultyRating(difficulty: workout.difficulty, color: Theme.indigo700)
                Spacer()
            }
            .padding(.leading, 8)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .padding(8)
        .background(.indigo.opacity(0.3))
        .cornerRadius(4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCard(workout: .defaultBackWorkout)
    }
}
