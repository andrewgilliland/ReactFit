//
//  ContentView.swift
//  ReactFit
//
//  Created by Andrew Gilliland on 7/15/23.
//

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
            .accentColor(.indigo)
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
