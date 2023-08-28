import SwiftUI

struct ExerciseModal<T>: View where T: ExerciseOption {
    let exercise: T
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            if let exerciseOption = exercise as? Exercise {
                ExerciseDetails(name: exerciseOption.name, targetMuscleGroup: exerciseOption.targetMuscleGroup, secondaryMuscles: exerciseOption.secondaryMuscles, difficulty: exerciseOption.difficulty, exerciseType: exerciseOption.exerciseType, equipment: exerciseOption.equipment, mechanics: exerciseOption.mechanics, forceType: exerciseOption.forceType)
                Spacer()
            } else if let workoutExercise = exercise as? WorkoutExercise {
                ExerciseDetails(name: workoutExercise.name, targetMuscleGroup: workoutExercise.targetMuscleGroup, secondaryMuscles: workoutExercise.secondaryMuscles, difficulty: workoutExercise.difficulty, exerciseType: workoutExercise.exerciseType, equipment: workoutExercise.equipment, mechanics: workoutExercise.mechanics, forceType: workoutExercise.forceType)
                Spacer()
            }
        }
        .background(Theme.indigo950)
    }
}

// struct ModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseModal(exercise: .latPullDown)
//    }
// }

protocol ExerciseOption {}

extension Exercise: ExerciseOption {}
