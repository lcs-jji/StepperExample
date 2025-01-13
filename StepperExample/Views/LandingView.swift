//
//  SumView.swift
//  StepperExample
//
//  Created by Xinchen Ji on 2025-01-13.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView(selection: Binding.constant(1)) {
            
            PlusView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Plus")
                }
                .tag(1)
            
            MinusView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Minus")
                }
                .tag(2)
 
            MultiplyView()
                .tabItem {
                    Image(systemName: "multiply")
                    Text("Multiply")
                }
                .tag(3)
            
            DivideView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Divide")
                }
                .tag(4)
            
            SquaredView()
                .tabItem {
                    Image(systemName: "02.circle")
                    Text("Square")
                }
                .tag(5)
        }
        .preferredColorScheme(.dark)
        .tint(.orange)
    }
}

#Preview {
    LandingView()
}
