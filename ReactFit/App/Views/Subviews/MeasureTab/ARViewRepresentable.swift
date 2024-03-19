
import ARKit
import SwiftUI

struct ARViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return context.coordinator.sceneView
    }

    func updateUIView(_: some UIView, context _: Context) {}

    func makeCoordinator() -> ARViewCoordinator {
        ARViewCoordinator()
    }
}
