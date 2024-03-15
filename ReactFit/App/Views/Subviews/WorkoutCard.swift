import SwiftUI

struct WorkoutCard: View {
    let workout: Workout

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(workout.name)
                        .modifier(SecondaryHeading())
                        .padding(.bottom, 1)
                    Spacer()
                }
                .padding(.leading, 8)

                HStack {
                    Text("Exercises: \(workout.exercises.count)")
                        .modifier(SecondaryCopy())
                        .padding(.bottom, 2)
                }
                .padding(.leading, 8)

                HStack {
                    Text("Total Sets: \(workout.totalSets)")
                        .modifier(SecondaryCopy())
                        .padding(.bottom, 2)
                }
                .padding(.leading, 8)

                HStack {
                    Text("Difficulty:")
                        .modifier(SecondaryCopy())
                        .padding(.bottom, 2)
                    DifficultyRating(difficulty: workout.difficulty)
                    Spacer()
                }
                .padding(.leading, 8)
            }
            .padding(8)
            .background(Theme.cyan400)
            .cornerRadius(4)

            RoundedRectangle(cornerRadius: 4)
                .stroke(.white, lineWidth: 2)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCard(workout: .defaultBackWorkout)
    }
}
