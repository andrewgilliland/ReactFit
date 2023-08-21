import SwiftUI

struct ProgramView: View {
    let program: Program

    var body: some View {
        TabLayout(title: program.name) {
            ForEach(program.weeks, id: \.self) { week in
                ProgramWeekView(week: week, index: program.weeks.firstIndex(of: week)! + 1)
            }
        }
    }
}

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView(program: .dbStarterPlan)
    }
}
