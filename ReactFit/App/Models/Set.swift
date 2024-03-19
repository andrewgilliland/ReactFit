
struct Set: Hashable {
    let repetitions: Int?
    let seconds: Int?

    init(repetitions: Int) {
        self.repetitions = repetitions
        seconds = nil
    }

    init(seconds: Int) {
        self.seconds = seconds
        repetitions = nil
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(repetitions)
        hasher.combine(seconds)
    }
}
