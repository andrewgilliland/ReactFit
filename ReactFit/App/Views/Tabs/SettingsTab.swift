import SwiftUI

struct SettingsTab: View {
    var body: some View {
        TabLayout(title: "Settings", systemImage: "gearshape") {
            Text("Update Settings")
        }
    }
}

struct SettingsTab_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTab()
    }
}
