import SwiftUI

struct SettingsTab: View {
    @AppStorage("systemThemeVal") private var systemTheme: Int = SchemeType.allCases.first!.rawValue
    @Environment(\.colorScheme) private var colorScheme

    @State private var languageCode = LanguageCode.english

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
        TabLayout(title: "Settings", systemImage: "gearshape") {
            VStack {
                HStack {
                    Text("\(colorSchemeText) Mode")

                    Picker(selection: $systemTheme) {
                        ForEach(SchemeType.allCases) { item in
                            Text(item.title)
                                .tag(item.rawValue)
                        }
                    } label: {
                        Text("Pick a theme")
                    }
                }

                HStack {
                    Picker(selection: $languageCode) {
                        ForEach(LanguageCode.allCases) { item in
                            Text(item.rawValue)
                                .tag(item.rawValue)
                        }
                    } label: {
                        Text("Pick a language")
                    }
                }
//                PieChart(data: [25, 25, 25, 25])
//                    .frame(width: 200, height: 200)
//                    .padding(.top, 200)
//                    .padding(.leading, 50)
            }
        }
        .preferredColorScheme(selectedScheme)
        .onChange(of: languageCode) { _ in
            print(languageCode)
            LocalizationService.shared.languageCode = languageCode
        }
    }
}

struct SettingsTab_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTab()
    }
}
