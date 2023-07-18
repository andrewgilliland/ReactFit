import SwiftUI

struct TabLayout<Content: View>: View {
    let title: String
    let systemImage: String
    let content: () -> Content

    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .modifier(PrimaryHeading())

                    Spacer()

                    Image(systemName: systemImage)
                        .foregroundColor(.indigo)
                        .font(.system(size: 24))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

            content()
        }
    }
}
