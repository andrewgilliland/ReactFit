import SwiftUI

struct PieChart: View {
    var data: [Double]

    var body: some View {
        ZStack {
            ForEach(0 ..< data.count, id: \.self) { index in

                PieChartSlice(startAngle: angle(for: index), endAngle: angle(for: index + 1))
                    .foregroundColor(sliceColor(at: index))
            }
        }
    }

    private func angle(for index: Int) -> Angle {
        let total = data.reduce(0, +)
        let startAngle = index == 0 ? 0 : data[0 ..< index].reduce(0, +) / total
        return .degrees(360 * startAngle)
    }

    private func sliceColor(at index: Int) -> Color {
        let colors: [Color] = [.red, .blue, .green, .purple]
        return colors[index % colors.count]
    }
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart(data: [20, 30, 40, 50])
    }
}
