//
//  aleartView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 31/1/23.
//

import SwiftUI

// 1. showing aleart with a message and own bottuon
//  2. showing an aleart with 2 own button.



struct aleartView: View {
   @State var isaleart1:Bool = false
    @State var isaleart3:Bool = false
    var body: some View {
        
        
        VStack(spacing: 20) {
            
            Button("simple Aleart") {
                isaleart1.toggle()
            }
            .alert("battery percentage is only 10%", isPresented: $isaleart1) {
                
                Button("Exit", role: .destructive) {
                    
                }
                
            } message: {
            Text(" plug it with charger")
            }
            
            
            Button("View Aleart") {
                isaleart3.toggle()
            }
            .alert("what u prefer?", isPresented: $isaleart3) {
                
                Button("Candy") {
                    
                }
                
                
                Button("ice cream") {
                    
                }
                
                
            }
            
            
            
            
            
            Spacer()
      }
   }
}

struct aleartView_Previews: PreviewProvider {
    static var previews: some View {
        aleartView()
    }
}
