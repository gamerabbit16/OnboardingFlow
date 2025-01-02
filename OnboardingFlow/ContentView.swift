//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Paul Jorda on 01/01/2025.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                WelcomePage()
                Untitled()
            }
            .background(Gradient(colors: gradientColors))
            .tabViewStyle(.page)
        }
        
    }
}

#Preview {
    ContentView()
}
