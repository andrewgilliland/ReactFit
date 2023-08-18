import SwiftUI

struct WorkoutView: View {
    let workout: Workout

    var body: some View {
        TabLayout(title: workout.name) {
            ForEach(workout.exercises, id: \.self) { exercise in
                ExerciseRow(exercise: exercise)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(workout: .defaultBackWorkout)
    }
}
