import SwiftUI

struct HomeTab: View {
    @Binding var languageCode: LanguageCode

    var body: some View {
        TabLayout(title: "Home".localized(languageCode: languageCode)) {
            Assets
                .gym1
                .resizable()
                .frame(width: 360, height: 240)
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab(languageCode: .constant(.english))
    }
}
