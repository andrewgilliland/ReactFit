import SwiftUI

struct PrimaryHeading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.sourceCodePro, size: 24)).foregroundColor(.indigo).fontWeight(.semibold)
    }
}

struct SecondaryHeading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.sourceCodePro, size: 16)).foregroundColor(.white).fontWeight(.semibold)
    }
}
