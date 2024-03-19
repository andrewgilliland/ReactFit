import Foundation

// Codable is actually just a typealias for both Encodable and Decodable
struct ToDo: Decodable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool

    enum CodingKeys: String, CodingKey {
        case isComplete = "completed"
        case userId, id, title
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        id = try values.decode(Int.self, forKey: .id)
        userId = try values.decode(Int.self, forKey: .userId)
        title = try values.decode(String.self, forKey: .title)
        completed = try values.decode(Bool.self, forKey: .isComplete)
    }
}

class ReactFitApi {
    func getTodo() async -> [ToDo] {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let todos = try JSONDecoder().decode([ToDo].self, from: data)
            return todos
        } catch {
            print("There was an error!")
            return []
        }
    }
}
