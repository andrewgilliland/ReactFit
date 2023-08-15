import SwiftUI

struct SettingsTab: View {
    @AppStorage("systemThemeVal") private var systemTheme: Int = SchemeType.allCases.first!.rawValue
    @Environment(\.colorScheme) private var colorScheme
    @Binding var languageCode: LanguageCode

    private var colorSchemeText: String { colorScheme == .light ? "Light" : "Dark" }

    private var selectedScheme: ColorScheme? {
        guard let theme = SchemeType(rawValue: systemTheme) else { return nil }

        switch theme {
        case .light:
            return .light
        case .dark:
            return .dark
        default:
            return nil
        }
    }

    var body: some View {
        TabLayout(title: "Settings".localized(languageCode: languageCode), systemImage: "gearshape") {
            VStack {
                HStack {
                    Text("\(colorSchemeText) Mode".localized(languageCode: languageCode))

                    Picker(selection: $systemTheme) {
                        ForEach(SchemeType.allCases) { item in
                            Text(item.title.localized(languageCode: languageCode))
                                .tag(item.rawValue)
                        }
                    } label: {
                        Text("Pick a theme")
                    }
                    Spacer()
                }

                HStack {
                    Text("Language".localized(languageCode: languageCode))
                    Picker(selection: $languageCode) {
                        ForEach(LanguageCode.allCases) { item in
                            Text(item.title.localized(languageCode: languageCode))
                                .tag(item.rawValue)
                        }
                    } label: {
                        Text("Pick a language")
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)
        }
        .preferredColorScheme(selectedScheme)
      
    }
}

struct SettingsTab_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTab(languageCode: .constant(.english))
    }
}
