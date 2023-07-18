import SwiftUI

struct HomeTab: View {
    var body: some View {
        TabLayout(title: "Home", systemImage: "house") {
            Text("Get it")
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
