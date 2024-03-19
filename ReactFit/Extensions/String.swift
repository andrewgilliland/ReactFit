import Foundation

extension String {
    func localized(languageCode: LanguageCode) -> String {
        if let path = Bundle.main.path(forResource: languageCode.rawValue, ofType: "lproj"),
           let bundle = Bundle(path: path)
        {
            let localizedString = NSLocalizedString(self, bundle: bundle, value: self, comment: self)
            return localizedString
        } else {
            print("Could not find localization file.")
            return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
        }
    }
}
