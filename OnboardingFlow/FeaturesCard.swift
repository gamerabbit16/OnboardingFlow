//
//  FeaturesCard.swift
//  OnboardingFlow
//
//  Created by Paul Jorda on 01/01/2025.
//

import SwiftUI


struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.title)
                .frame(width: 50)
                .padding(.trailing, 10)
            Text(description)
                Spacer()
        }
        .padding()
        .background(.tint, in: RoundedRectangle(cornerRadius: 8))
        .foregroundStyle(.white)
    }
}


#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description")
}
