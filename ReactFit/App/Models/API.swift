import Foundation

class API {
    func getAllExercises() async -> [Exercise] {
        let url = URL(string: Keys.developmentApiUrl.rawValue)!

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let exercises = try JSONDecoder().decode([Exercise].self, from: data)
            return exercises
        } catch {
            print("There was an error!")
            return []
        }
    }
}
