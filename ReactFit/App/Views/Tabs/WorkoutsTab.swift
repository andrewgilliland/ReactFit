import SwiftUI

struct WorkoutsTab: View {
    let workouts: [String] = ["Chest", "Back", "Legs", "Arms", "Shoulders"]

    var body: some View {
        TabLayout(title: "Workouts", systemImage: "dumbbell") {
            LazyVGrid(columns: createGridItems(), spacing: 8) {
                ForEach(workouts, id: \.self) { workout in
                    NavigationLink(destination: WorkoutView(workout: workout)) {
                        CardView(workout: workout)
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
