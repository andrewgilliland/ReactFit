import SwiftUI

struct DifficultyRating: View {
    let difficulty: Difficulty
    let color: Color

    var body: some View {
        switch difficulty {
        case .beginner: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(color)
                Image(systemName: "star")
                    .foregroundColor(color)
                Image(systemName: "star")
                    .foregroundColor(color)
            }

        case .intermediate: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(color)
                Image(systemName: "star.fill")
                    .foregroundColor(color)
                Image(systemName: "star")
                    .foregroundColor(color)
            }

        case .advanced: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(color)
                Image(systemName: "star.fill")
                    .foregroundColor(color)
                Image(systemName: "star.fill")
                    .foregroundColor(color)
            }
        }
    }
}

struct DifficultyRating_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyRating(difficulty: .intermediate, color: .indigo)
    }
}
