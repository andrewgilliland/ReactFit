import SwiftUI

struct TabsView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeTab()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }

                NavigationView {
                    WorkoutsTab()
                }
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Workouts")
                }

                NavigationView {
                    ExercisesTab()
                }
                .tabItem {
                    Image(systemName: "figure.highintensity.intervaltraining")
                    Text("Exercises")
                }

                SettingsTab()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
            }
            .accentColor(Theme.indigo700)
        }
//        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabsView()
                .previewDisplayName("Light Mode")
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))

            TabsView()
                .previewDisplayName("Dark Mode")
                .preferredColorScheme(.dark)
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
        }
    }
}
