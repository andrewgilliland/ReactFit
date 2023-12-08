import SwiftUI

struct ProgramsTab: View {
    let programs: [Program] = [.dbStarterPlan, .bodybuilderBeginner, .shortcutToSize]

    let leadingPadding = 8

    var body: some View {
        TabLayout(title: "Programs") {
            ForEach(programs, id: \.self) { program in
                NavigationLink(destination: ProgramView(program: program)) {
                    ProgramCard(program: program)
                        .padding(.bottom, 12)
                }
            }
            .padding(.horizontal)
        }
    }

    private func createGridItems() -> [GridItem] {
        [GridItem(.flexible()), GridItem(.flexible())]
    }
}

struct ProgramsTab_Previews: PreviewProvider {
    static var previews: some View {
        ProgramsTab()
    }
}
