import SwiftUI

struct DifficultyRating: View {
    let difficulty: Difficulty

    var body: some View {
        switch difficulty {
        case .beginner: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.black)
                Image(systemName: "star")
                    .foregroundColor(.black)
                Image(systemName: "star")
                    .foregroundColor(.black)
            }

        case .intermediate: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.black)
                Image(systemName: "star.fill")
                    .foregroundColor(.black)
                Image(systemName: "star")
                    .foregroundColor(.black)
            }

        case .advanced: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.black)
                Image(systemName: "star.fill")
                    .foregroundColor(.black)
                Image(systemName: "star.fill")
                    .foregroundColor(.black)
            }
        }
    }
}

struct DifficultyRating_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyRating(difficulty: .intermediate)
    }
}
