import RealmSwift

class Item: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var isComplete = false
    @Persisted var summary: String = "Summary"
    @Persisted var owner_id: String
}

final class ItemGroup: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var items = RealmSwift.List<Item>()
    @Persisted var ownerId = ""
}
