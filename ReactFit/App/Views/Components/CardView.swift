import SwiftUI

struct CardView: View {
    let workout: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(workout)
                    .modifier(SecondaryHeading())
                    .padding(.bottom, 2)

                Spacer()
            }
            .padding(.leading, 8)

            HStack {
                Text("Difficulty")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Spacer()
            }
            .padding(.leading, 8)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 60)
        .padding(8)
        .background(.indigo.opacity(0.3))
        .cornerRadius(4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(workout: "Legs")
    }
}
