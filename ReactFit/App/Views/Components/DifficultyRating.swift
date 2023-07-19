//
//  DifficultyRating.swift
//  ReactFit
//
//  Created by Andrew Gilliland on 7/19/23.
//

import SwiftUI

struct DifficultyRating: View {
    let difficulty: Difficulty

    var body: some View {
        switch difficulty {
        case .beginner: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.indigo)
                Image(systemName: "star")
                    .foregroundColor(.indigo)
                Image(systemName: "star")
                    .foregroundColor(.indigo)
            }

        case .intermediate: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.indigo)
                Image(systemName: "star.fill")
                    .foregroundColor(.indigo)
                Image(systemName: "star")
                    .foregroundColor(.indigo)
            }

        case .advanced: HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.indigo)
                Image(systemName: "star.fill")
                    .foregroundColor(.indigo)
                Image(systemName: "star.fill")
                    .foregroundColor(.indigo)
            }
        }
    }
}

struct DifficultyRating_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyRating(difficulty: .intermediate)
    }
}
