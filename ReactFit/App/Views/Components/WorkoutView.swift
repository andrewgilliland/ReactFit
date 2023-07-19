import SwiftUI

struct WorkoutView: View {
    let workout: Workout

    var body: some View {
        TabLayout(title: workout.name, systemImage: "figure.highintensity.intervaltraining") {
            ForEach(workout.exercises, id: \.self) { exercise in
                ExerciseRow(exercise: exercise)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(workout: Workout.defaultWorkout)
    }
}
