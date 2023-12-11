import SwiftUI

enum Phase: CaseIterable {
    case initial
    case move
    case scale

    var verticalOffset: Double {
        switch self {
        case .initial: 0
        case .move, .scale: -64
        }
    }

    var scale: Double {
        switch self {
        case .initial, .move: 1.0
        case .scale: 1.5
        }
    }

    var foregroundStyle: Color {
        switch self {
        case .initial, .move: Color.white
        case .scale: Theme.indigo400
        }
    }
}

struct LikeButton: View {
    @State private var isLiked = false

    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 32))
            .onTapGesture {
                isLiked.toggle()
            }
            .phaseAnimator(Phase.allCases, trigger: isLiked) { content, phase in
                content
                    .offset(y: phase.verticalOffset)
                    .scaleEffect(phase.scale)
                    .foregroundStyle(phase.foregroundStyle)
            }
//    animation: { phase in
//                switch phase {
//                case .initial: .smooth
//                case .move: .easeIn(duration: 0.5)
//                case .scale: .spring(duration: 0.5, bounce: 0.7)
//                }
//            }
    }
}

#Preview {
    LikeButton()
}
