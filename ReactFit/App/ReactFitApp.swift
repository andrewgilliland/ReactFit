import RealmSwift
import SwiftUI

let theAppConfig = loadAppConfig()
let atlasUrl = theAppConfig.atlasUrl
let app = App(id: theAppConfig.appId, configuration: AppConfiguration(baseURL: theAppConfig.baseUrl, transport: nil))

@main
struct ReactFitApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            RealmLoaderView()
        }
    }
}
