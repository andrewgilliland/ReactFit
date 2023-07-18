//
//  ViewModifiers.swift
//  ReactFit
//
//  Created by Andrew Gilliland on 7/17/23.
//

import SwiftUI

struct PrimaryHeading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("SourceCodePro-SemiBold", size: 24)).foregroundColor(.indigo).fontWeight(.semibold)
    }
}

struct SecondaryHeading: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("SourceCodePro-SemiBold", size: 16)).foregroundColor(.white).fontWeight(.semibold)
    }
}
