

import SwiftUI

struct MeasureTab: View {
    let coordinator = ARViewCoordinator()

    var body: some View {
        ARViewRepresentable()
            .overlay(alignment: .bottomTrailing) {
                VStack {
                    Text("ARView")
                        .padding()
                        .background(.thinMaterial)
                        .padding()
                }
            }
    }
}

struct MeasureTab_Previews: PreviewProvider {
    static var previews: some View {
        MeasureTab()
    }
}
