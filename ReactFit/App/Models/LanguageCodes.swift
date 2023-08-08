
enum LanguageCode: String, Identifiable, CaseIterable {
    var id: Self { self }
    case english = "en"
    case spanish = "es"
}

extension LanguageCode {
    var title: String {
        switch self {
        case .english:
            return "en"
        case .spanish:
            return "es"
        }
    }
}
