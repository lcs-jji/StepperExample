//
//  ContentView.swift
//  StepperExample
//
//  Created by Xinchen Ji on 2025-01-13.
//
 
import SwiftUI
 
struct SquaredView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    
    // MARK: Computed properties
    var squared: Int {
        return base * base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
 
                Text("(\(base))")
                    .font(.system(size: 96))
 
                Text("2")
                    .font(.system(size: 44))
 
                Text("=")
                    .font(.system(size: 96))
 
                Text("\(squared)")
                    .font(.system(size: 96))
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Stepper(value: $base, label: {
                Text("base")
            })
                        
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    SquaredView()
}
