import SwiftUI

struct WorkoutsTab: View {
    let workouts: [Workout] = [.defaultBackWorkout, .defaultCoreWorkout]

    var body: some View {
        TabLayout(title: "Workouts") {
            VStack {
                ForEach(workouts, id: \.self) { workout in
                    NavigationLink(destination: WorkoutView(workout: workout)) {
                        WorkoutCard(workout: workout)
                    }
                }
            }
            .padding()
        }
    }
}

struct WorkoutsTab_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsTab()
    }
}
