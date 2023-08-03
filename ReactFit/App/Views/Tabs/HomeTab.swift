import SwiftUI

struct HomeTab: View {
    var body: some View {
        TabLayout(title: "Home", systemImage: "house") {
            Assets
                .gym1
                .resizable()
                .frame(width: 360, height: 240)
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
