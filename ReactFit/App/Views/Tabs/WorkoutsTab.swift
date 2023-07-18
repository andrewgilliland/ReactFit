import SwiftUI

struct WorkoutsTab: View {
    let workouts: [String] = ["Chest", "Back", "Legs", "Arms", "Shoulders"]

    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Workouts")
                        .modifier(PrimaryHeading())

                    Spacer()

                    Image(systemName: "dumbbell")
                        .foregroundColor(.indigo)
                        .font(.system(size: 24))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

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
