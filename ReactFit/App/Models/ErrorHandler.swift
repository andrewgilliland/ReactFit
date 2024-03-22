import RealmSwift
import SwiftUI

final class ErrorHandler: ObservableObject {
    @Published var error: Swift.Error?

    init(app: RealmSwift.App) {
        app.syncManager.errorHandler = { syncError, _ in
            self.error = syncError
        }
    }
}
