import SwiftUI

struct TabLayout<Content: View>: View {
    let title: String
    let content: () -> Content

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    HStack {
                        Text(title)
                            .modifier(PrimaryHeading())

                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()

                content()
            }
        }
    }
}
