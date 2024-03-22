import RealmSwift
import SwiftUI

struct TabsView: View {
    @ObservedRealmObject var itemGroup: ItemGroup
    @State private var languageCode = LanguageCode.english

    var body: some View {
        NavigationView {
            TabView {
                NavigationView {
                    ProgramsTab(itemGroup: itemGroup)
                }
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Programs".localized(languageCode: languageCode))
                }

                NavigationView {
                    WorkoutsTab()
                }
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Workouts".localized(languageCode: languageCode))
                }

                NavigationView {
                    ExercisesTab(languageCode: $languageCode)
                }
                .tabItem {
                    Image(systemName: "figure.highintensity.intervaltraining")
                    Text("Exercises".localized(languageCode: languageCode))
                }

//                SettingsTab(languageCode: $languageCode)
//                    .tabItem {
//                        Image(systemName: "gearshape")
//                        Text("Settings".localized(languageCode: languageCode))
//                    }
//                MeasureTab()
//                    .tabItem {
//                        Image(systemName: "ruler")
//                        Text("Measure")
//                    }
            }
            .accentColor(.tabIcon)
        }
    }
}
