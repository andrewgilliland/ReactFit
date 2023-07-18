import SwiftUI

struct WorkoutView: View {
    let workout: String

    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    Text(workout)
                        .modifier(PrimaryHeading())

                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(workout: "Legs")
    }
}
