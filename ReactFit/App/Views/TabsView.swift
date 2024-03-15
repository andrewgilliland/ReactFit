import RealmSwift
import SwiftUI

struct TabsView: View {
    @ObservedObject var app: RealmSwift.App
    @State private var languageCode = LanguageCode.english

    var body: some View {
        NavigationView {
            TabView {
//                HomeTab(languageCode: $languageCode)
//                    .tabItem {
//                        Image(systemName: "house")
//                        Text("Home".localized(languageCode: languageCode))
//                    }
                NavigationView {
                    ProgramsTab()
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
