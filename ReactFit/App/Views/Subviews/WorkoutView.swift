import SwiftUI

struct WorkoutView: View {
    let workout: Workout

    var body: some View {
        TabLayout(title: workout.name) {
            ForEach(workout.exercises, id: \.self) { exercise in
                WorkoutExerciseCard(exercise: exercise, index: workout.exercises.firstIndex(of: exercise)! + 1)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(workout: .defaultBackWorkout)
    }
}
