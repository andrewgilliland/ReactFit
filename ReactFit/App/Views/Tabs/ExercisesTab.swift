import SwiftUI

struct ExercisesTab: View {
    @Binding var languageCode: LanguageCode
    @State private var showModal = false
    private let reactFitApi = ReactFitApi()
    @State private var todos: [ToDo] = []

    let exercises: [Exercise] = [
        .barbbellBackSquat,
        .dumbbellGobletSquat,
        .legExtension,
        .barbellLunge,
        .bodyweightWalkingLunge,

        .romanianDeadlift,
        .legCurls,
        .seatedLegCurl,

        .standingCalfRaise,
        .bodyweightStandingCalfRaise,
        .seatedCalfRaise,

        .latPullDown,
        .wideGripPullUp,
        .seatedRow,
        .oneArmDumbbellRow,
        .invertedRow,
        .straightArmLatPullDown,

        .dumbbellBenchPress,
        .barbellBenchPress,
        .dumbbellFlys,
        .inclineBenchPress,
        .inclineDumbbellBenchPress,
        .standingCableFly,

        .militaryPress,
        .seatedDumbbellPress,
        .dumbbellLateralRaise,
        .cableFacePull,
        .bentOverDumbbellRearDeltRaise,
        .weightPlateFrontRaise,

        .standingBarbellCurl,
        .cableCurl,
        .inclineDumbbellCurl,
        .dumbbellHammerPreacherCurl,

        .ropeTricepsExtension,
        .tricepsDip,
        .seatedOverheadDumbbellTricepExtension,
        .ezBarSkullcrusher,

        .planks,
        .lyingLegRaise,
        .flutterKick,
        .mountainClimber,
    ]

    var body: some View {
        TabLayout(title: "Exercises".localized(languageCode: languageCode)) {
            VStack {
                LazyVGrid(columns: createGridItems(), spacing: 8) {
                    ForEach(MuscleGroup.allCases) { muscleGroup in
                        NavigationLink(destination: ExerciseScreen(muscleGroup: muscleGroup, exercises: exercisesByMuscleGroup[muscleGroup] ?? [])) {
                            MuscleGroupCard(muscleGroup: muscleGroup)
                        }
                    }
                }
                .padding()
                ForEach(todos) { todo in
                    Text(todo.title)
                }
            }
        }.task {
//            todos = await reactFitApi.getTodo()
        }
    }

    var exercisesByMuscleGroup: [MuscleGroup: [Exercise]] {
        Dictionary(grouping: exercises, by: { $0.targetMuscleGroup })
    }

    private func createGridItems() -> [GridItem] {
        [GridItem(.flexible()), GridItem(.flexible())]
    }
}

struct ExercisesTab_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesTab(languageCode: .constant(.english))
    }
}
