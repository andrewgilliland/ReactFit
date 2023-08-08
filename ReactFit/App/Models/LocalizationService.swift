import Foundation

class LocalizationService {
    static let shared = LocalizationService()
    static let changedLanguage = Notification.Name("changedLanguage")

    private init() {}

    var languageCode: LanguageCode {
        get {
            guard let languageString = UserDefaults.standard.string(forKey: "language") else {
                return .english
            }
            print("get localizationService: \(languageString)")
            return LanguageCode(rawValue: languageString) ?? .english
        } set {
            if newValue != languageCode {
                print("set newValues \(newValue.rawValue)")
                UserDefaults.standard.setValue(newValue.rawValue, forKey: "language")
                NotificationCenter.default.post(name: LocalizationService.changedLanguage, object: nil)
            }
        }
    }
}
