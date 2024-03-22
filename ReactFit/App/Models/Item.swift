import RealmSwift

let randomAdjectives = [
    "fluffy", "classy", "bumpy", "bizarre", "wiggly", "quick", "sudden",
    "acoustic", "smiling", "dispensable", "foreign", "shaky", "purple", "keen",
    "aberrant", "disastrous", "vague", "squealing", "ad hoc", "sweet",
]
/// Random noun for more interesting demo item names
let randomNouns = [
    "floor", "monitor", "hair tie", "puddle", "hair brush", "bread",
    "cinder block", "glass", "ring", "twister", "coasters", "fridge",
    "toe ring", "bracelet", "cabinet", "nail file", "plate", "lace",
    "cork", "mouse pad",
]

class Item: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId

    @Persisted var name = "\(randomAdjectives.randomElement()!) \(randomNouns.randomElement()!)"
    @Persisted var isComplete = false
    @Persisted var summary: String
    @Persisted var owner_id: String
}

final class ItemGroup: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var items = RealmSwift.List<Item>()
    @Persisted var ownerId = ""
}
