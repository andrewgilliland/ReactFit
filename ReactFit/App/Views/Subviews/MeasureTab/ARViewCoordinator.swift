import ARKit
import RealityKit
import SwiftUI

class ARViewCoordinator: NSObject, ARSCNViewDelegate {
    var sceneView: ARSCNView
    private var coachingOverlay: ARCoachingOverlayView
    private var configuration: ARWorldTrackingConfiguration

    override init() {
        sceneView = ARSCNView()
        coachingOverlay = ARCoachingOverlayView()
        configuration = ARWorldTrackingConfiguration()

        super.init()

        sceneView.delegate = self

        configuration.environmentTexturing = .automatic
        configuration.planeDetection = [.horizontal]
        configuration.worldAlignment = ARConfiguration.WorldAlignment.gravity

        sceneView.session.run(configuration)
        sceneView.layer.masksToBounds = true
        print("ARViewCoordinator init")
    }

    func renderer(_: SCNSceneRenderer, didAdd _: SCNNode, for _: ARAnchor) {
        print("renderer")
    }
}
