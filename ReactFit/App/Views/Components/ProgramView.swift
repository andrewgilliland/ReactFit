import SwiftUI

struct ProgramView: View {
    let program: Program

    var body: some View {
        TabLayout(title: program.name) {
            Text("Something awesome is coming soon...")
        }
    }
}

struct ProgramView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramView(program: .dbStarterPlan)
    }
}
