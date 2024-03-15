import RealmSwift
import SwiftUI

let theAppConfig = loadAppConfig()

let atlasUrl = theAppConfig.atlasUrl

let app = App(id: theAppConfig.appId, configuration: AppConfiguration(baseURL: theAppConfig.baseUrl, transport: nil))

@main
struct ReactFitApp: SwiftUI.App {
    @StateObject var errorHandler = ErrorHandler(app: app)

    var body: some Scene {
        WindowGroup {
            TabsView(app: app)
                .environmentObject(errorHandler)
                .alert(Text("Error"), isPresented: .constant(errorHandler.error != nil)) {
                    Button("OK", role: .cancel) { errorHandler.error = nil }
                } message: {
                    Text(errorHandler.error?.localizedDescription ?? "")
                }
                .onAppear {
                    if let atlasUrl = atlasUrl {
                        print("To view your data in Atlas, go to this link: " + atlasUrl)
                    }
                }
        }
    }
}

final class ErrorHandler: ObservableObject {
    @Published var error: Swift.Error?

    init(app: RealmSwift.App) {
        app.syncManager.errorHandler = { syncError, _ in
            self.error = syncError
        }
    }
}
