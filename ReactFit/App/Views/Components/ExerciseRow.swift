//
//  ExerciseRowView.swift
//  ReactFit
//
//  Created by Andrew Gilliland on 7/18/23.
//

import SwiftUI

struct ExerciseRow: View {
    let exercise: Exercise

    var body: some View {
        NavigationLink(destination: Text(exercise.name)) {
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.indigo)
                    .frame(width: 40, height: 40)

                VStack(alignment: .leading) {
                    Text(exercise.name)
                        .font(.custom("SourceCodePro-SemiBold", size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text(exercise.targetMuscleGroup.rawValue)
                        .font(.custom("SourceCodePro-SemiBold", size: 14))
                        .foregroundColor(.white.opacity(0.6))
                }

                Spacer()

                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 20)
            .foregroundColor(.white.opacity(0.6))
        }
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRow(exercise: Exercise(name: "Lat Pull Down", targetMuscleGroup: .lats, exerciseType: .strength, equipment: .cables, mechanics: .compound, forceType: .pull, experienceLevel: .beginner, secondaryMuscles: [.biceps]))
    }
}
