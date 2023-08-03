import SwiftUI

struct WorkoutsTab: View {
    let workouts: [Workout] = [Workout.defaultWorkout,
                               Workout(name: "Core Blast",
                                       difficulty: .intermediate,
                                       exercises: [Exercise(name: "Plank", targetMuscleGroup: .abs, exerciseType: .strength, equipment: .bodyweight, mechanics: .isolation, forceType: .static, difficulty: .beginner, secondaryMuscles: [.lowerBack], sets: [Set(seconds: 30), Set(seconds: 45), Set(seconds: 60)])])]

    var body: some View {
        TabLayout(title: "Workouts", systemImage: "dumbbell") {
            LazyVGrid(columns: createGridItems(), spacing: 8) {
                ForEach(workouts, id: \.self) { workout in
                    NavigationLink(destination: WorkoutView(workout: workout)) {
                        WorkoutCard(workout: workout)
                    }
                }
            }
            .padding()
        }
    }

    private func createGridItems() -> [GridItem] {
        [GridItem(.flexible()), GridItem(.flexible())]
    }
}

struct WorkoutsTab_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsTab()
    }
}
