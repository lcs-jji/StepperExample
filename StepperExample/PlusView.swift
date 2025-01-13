//
//  PlusView.swift
//  StepperExample
//
//  Created by Xinchen Ji on 2025-01-13.
//

import SwiftUI
 
struct PlusView: View {
    
    // MARK: Stored properties
    @State var base1: Int = 1
    @State var base2: Int = 1
    
    // MARK: Computed properties
    var plused: Int {
        return base1 + base2
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack{
                Spacer()
                Text("\(base1)")
                    .font(.system(size: 96))
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Stepper(value: $base1, label: {
                Text("select first number")
            })
            
            HStack{
                Text("+")
                    .font(.system(size: 96))
                Spacer()
                Text("\(base2)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $base2, label: {
                Text("select first number")
            })
            
            HStack{
                Spacer()
                Text("=")
                    .font(.system(size: 96))
            }
            
            HStack{
                Spacer()
                Text("\(plused)")
                    .font(.system(size: 96))
            }
        }
        .padding()
    }
}
 
#Preview {
    PlusView()
}
