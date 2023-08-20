import SwiftUI

struct ExercisesTab: View {
    @Binding var languageCode: LanguageCode
    @State private var showModal = false

    let exercises: [Exercise] = [
        .latPullDown,
        .wideGripPullUp,
        .straightArmLatPullDown,
        .dumbbellBenchPress,
    ]

    var body: some View {
        TabLayout(title: "Exercises".localized(languageCode: languageCode)) {
            ForEach(exercises, id: \.self) { exercise in
                ExerciseView(exercise: exercise)
            }
        }
    }
}

struct ExercisesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesTab(languageCode: .constant(.english))
    }
}
