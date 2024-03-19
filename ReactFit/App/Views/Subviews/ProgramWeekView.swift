import SwiftUI

struct ProgramWeekView: View {
    let week: Week
    let index: Int

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Week \(index)")
                    .modifier(SecondaryHeading())
                Spacer()
            }
            .padding(8)

            VStack {
                ForEach(week.workouts, id: \.self) { workout in
                    NavigationLink(destination: WorkoutView(workout: workout)) {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(workout.name)
                                    .modifier(SecondaryHeading())
                                Spacer()
                            }
                            Spacer()
                        }
                        .frame(height: 60)
                        .padding(8)
                        .background(Theme.indigo700.opacity(0.3))
                        .cornerRadius(4)
                    }
                }
            }
            .padding(8)
        }
        .background(Theme.indigo950)
        .padding(8)
        .cornerRadius(4)
    }
}

// struct ProgramWeekView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgramWeekView( week: , index: 1)
//    }
// }
