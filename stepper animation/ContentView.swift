//
//  ContentView.swift
//  stepper animation
//
//  Created by JFJ on 22/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        print(animationAmount)
        
        return VStack{
            Stepper("Scale Amount", value: $animationAmount.animation(
                Animation.easeInOut(duration: 1) .repeatCount(3, autoreverses: true)), in: 1...10)
            Spacer()
            Button("Tap Me") {
                self.animationAmount += 1
                
            }
        .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
