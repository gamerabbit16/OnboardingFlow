//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Paul Jorda on 01/01/2025.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack{
            Text("Features")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
        FeatureCard(iconName: "person.2.crop.square.stack.fill",
                    description: "A multiline description")
            FeatureCard(iconName: "quote.bubble.fill",
                        description: "Something here")
    }
        .padding()
    }
}

#Preview {
    FeaturesPage()
}
