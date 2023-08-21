import SwiftUI

struct ProgramView: View {
    let program: Program

    var body: some View {
        TabLayout(title: program.name) {
            ForEach(program.weeks, id: \.self) { week in
                VStack(alignment: .leading) {
                    Text("Week")
                    HStack {
                        ForEach(week.workouts, id: \.self) { _ in
                            Rectangle()
                                .fill(Theme.indigo600)
                                .cornerRadius(4)
                                .frame(width: 40, height: 40)
                        }
                    }
                }
            }
        }
    }
}

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView(program: .dbStarterPlan)
    }
}
