import SwiftUI

struct ExercisesTab: View {
    @Binding var languageCode: LanguageCode
    @State private var showModal = false
    
    // make api call to get all exercises from FastifyApi
    

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
            LazyVGrid(columns: createGridItems(), spacing: 8) {
                ForEach(MuscleGroup.allCases) { muscleGroup in
                    NavigationLink(destination: ExerciseScreen(muscleGroup: muscleGroup, exercises: exercisesByMuscleGroup[muscleGroup] ?? [])) {
                        VStack {
                            HStack {
                                Text(muscleGroup.rawValue)
                                    .modifier(SecondaryHeading())
                                    .padding(.bottom, 2)
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
            }
            .padding()
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
