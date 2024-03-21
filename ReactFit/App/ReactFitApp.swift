import RealmSwift
import SwiftUI

let theAppConfig = loadAppConfig()
let atlasUrl = theAppConfig.atlasUrl
let app = App(id: theAppConfig.appId, configuration: AppConfiguration(baseURL: theAppConfig.baseUrl, transport: nil))

@main
struct ReactFitApp: SwiftUI.App {
    @StateObject var errorHandler = ErrorHandler(app: app)

    let realm = try! Realm()

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

                    print(realm)

                    let items = realm.objects(Item.self)

                    print(items)
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

//
// func connectToDatabase() {
//    appClient.login(credentials: Credentials.anonymous) { (result) in
//        // Remember to dispatch back to the main thread in completion handlers
//        // if you want to do anything on the UI.
//        DispatchQueue.main.async {
//            switch result {
//            case .failure(let error):
//                print("Login failed: \(error)")
//            case .success(let user):
//                print("Login as \(user) succeeded!")
//                // mongodb-atlas is the cluster service name
//                let mongoClient = user.mongoClient("mongodb-atlas")
//
//                // Select the database
//                let database = mongoClient.database(named: "todo")
//
//                // Select the collection
//                let collection = database.collection(withName: "Item")
//
//
//                // Insert the document into the collection
////                collection.insertOne(drink) { result in
////                    switch result {
////                    case .failure(let error):
////                        print("Call to MongoDB failed: \(error.localizedDescription)")
////                        return
////                    case .success(let objectId):
////                        // Success returns the objectId for the inserted document
////                        print("Successfully inserted a document with id: \(objectId)")
////                    }
////                }
//            }
//        }
//    }
// }
