import SwiftUI

struct PrimaryHeading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.sourceCodePro, size: 24)).foregroundColor(.screenHeading).fontWeight(.semibold)
    }
}

struct SecondaryHeading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.sourceCodePro, size: 18)).foregroundColor(.black).fontWeight(.semibold)
    }
}

struct SecondaryCopy: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.sourceCodePro, size: 16)).foregroundColor(.black).fontWeight(.semibold)
    }
}

struct TertiaryCopy: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.sourceCodePro, size: 14)).foregroundColor(.black).fontWeight(.semibold)
    }
}

struct ExerciseDetailModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Theme.indigo800)
            .cornerRadius(8)
    }
}
