import RealmSwift
import SwiftUI

struct RealmLoaderView: View {
    @StateObject var errorHandler = ErrorHandler(app: app)
    @ObservedResults(ItemGroup.self) var itemGroups

    var body: some View {
        if let itemGroup = itemGroups.first {
            TabsView(itemGroup: itemGroup)
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
        } else {
            ProgressView().onAppear {
                $itemGroups.append(ItemGroup())
            }
        }
    }
}

#Preview {
    RealmLoaderView()
}
