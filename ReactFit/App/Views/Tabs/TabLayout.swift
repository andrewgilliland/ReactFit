import SwiftUI

struct TabLayout<Content: View>: View {
    let title: String
    let systemImage: String
    let content: () -> Content

    var body: some View {
        ZStack {
            LinearGradient(gradient:
                Gradient(colors: [.mainGradientTop, .mainGradientBottom]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    HStack {
                        Text(title)
                            .modifier(PrimaryHeading())

                        Spacer()

                        Image(systemName: systemImage)
                            .foregroundColor(.screenHeading)
                            .font(.system(size: 24))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()

                content()
            }
        }
    }
}
