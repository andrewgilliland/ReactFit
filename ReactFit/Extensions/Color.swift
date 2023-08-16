import SwiftUI
import UIKit

extension Color {
    init(
        light lightModeColor: @escaping @autoclosure () -> Color,
        dark darkModeColor: @escaping @autoclosure () -> Color
    ) {
        self.init(UIColor(light: UIColor(lightModeColor()), dark: UIColor(darkModeColor()))
        )
    }
}

extension Color {
    static var mainBackground: Self {
        Self(light: Theme.indigo50,
             dark: Theme.indigo950)
    }

    static var screenHeading: Self {
        Self(light: Theme.emerald600, dark: Theme.emerald400)
    }

    static var tabIcon: Self {
        Self(light: Theme.emerald600, dark: Theme.emerald400)
    }

    static var cardHeading: Self {
        Self(light: Theme.gray900, dark: Theme.gray100)
    }

    static var cardCopy: Self {
        Self(light: Theme.gray600,
             dark: Theme.gray400)
    }
}
