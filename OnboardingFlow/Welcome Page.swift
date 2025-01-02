//
//  Welcome Page.swift
//  OnboardingFlow
//
//  Created by Paul Jorda on 01/01/2025.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "cloud.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.white)
            }
            
            Text("Weather")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                //.border(.black, width: 1.5)
            
            Text("To know the Last weather !")
                .font(.title2)
               // .border(.black, width: 1.5)
        }
        //.border(.orange, width: 1.5)
        .padding()
        //.border(.purple, width: 1.5)
    }
}


#Preview {
    WelcomePage()

}
