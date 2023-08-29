import SwiftUI

func simpleHaptics() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.success)
}

func warningHaptics() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.warning)
}

func errorHaptics() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.error)
}
