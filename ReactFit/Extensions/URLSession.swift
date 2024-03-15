import Foundation

extension URLSession {
  func fetchData(at url: URL, completion: @escaping (Result<[ToDo], Error>) -> Void) {
      
    self.dataTask(with: url) { (data, response, error) in
        
      if let error = error {
        completion(.failure(error))
      }

      if let data = data {
          
        do {
          let toDos = try JSONDecoder().decode([ToDo].self, from: data)
          completion(.success(toDos))
            
        } catch let decoderError {
          completion(.failure(decoderError))
            
        }
          
      }
    }.resume()
  }
}
