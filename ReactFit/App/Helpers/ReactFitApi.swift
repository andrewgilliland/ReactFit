import Foundation

// Codable is actually just a typealias for both Encodable and Decodable
struct ToDo: Decodable {
  let userId: Int
  let id: Int
  let title: String
  let completed: Bool
    
    enum CodingKeys: String, CodingKey {
        case isComplete = "completed"
        case userId, id, title
      }
}

