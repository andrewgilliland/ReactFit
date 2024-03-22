import RealmSwift
import SwiftUI

let theAppConfig = loadAppConfig()
let atlasUrl = theAppConfig.atlasUrl
let app = App(id: theAppConfig.appId, configuration: AppConfiguration(baseURL: theAppConfig.baseUrl, transport: nil))

@main
struct ReactFitApp: SwiftUI.App {
    @StateObject var errorHandler = ErrorHandler(app: app)

    let realm = try! Realm()
    @ObservedResults(ItemGroup.self) var itemGroups

    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)

            @ObservedResults(Item.self) var items

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

                    realm.deleteAll()

                    $itemGroups.append(ItemGroup())
                    print("itemGroups")
                    print(itemGroups)
                }
        }
    }
}
