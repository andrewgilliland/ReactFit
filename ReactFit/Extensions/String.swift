import Foundation

extension String {
    func localized() -> String {
        if let currentLocale = Locale.current.language.languageCode?.identifier {
            print("Selected language code: \(currentLocale)")
        }

        return NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self
        )
    }
}

//    func localized(_ language: LanguageCode) -> String {
//           let path = Bundle.main.path(forResource: language.rawValue, ofType: "lproj")
//           let bundle: Bundle
//           if let path = path {
//               bundle = Bundle(path: path) ?? .main
//           } else {
//               bundle = .main
//           }
//        return localized(bundle, args: nil)
//       }
//
//    func localized(_ language: LanguageCode, args arguments: CVarArg...) -> String {
//          let path = Bundle.main.path(forResource: language.rawValue, ofType: "lproj")
//          let bundle: Bundle
//          if let path = path {
//              bundle = Bundle(path: path) ?? .main
//          } else {
//              bundle = .main
//          }
//        return String(format: localized(bundle, args: nil), arguments: arguments)
//      }
//
//    private func localized(bundle: Bundle) -> String {
//           return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
//       }
// }
