import SwiftUI

struct PieChartSlice: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.minX, y: rect.minY)

        let radius = min(rect.width, rect.height) / 2
        print("radius: \(radius)")
        print("startAngle: \(startAngle)")

        path.move(to: center)
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.closeSubpath()

        return path
    }
}
