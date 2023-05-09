//
//  TransitionView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 20/1/23.
//

import SwiftUI

struct TransitionView: View, Equatable {
   static func == (lhs: TransitionView, rhs: TransitionView) -> Bool {        lhs.istrasition = rhs.istrasition
       return true
   }
    
   
    
    @State var istrasition:Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                
                Button("Press") {
                    istrasition.toggle()
            }
                Spacer()
        }
            
            
            if istrasition {
               RoundedRectangle(cornerRadius: 30.0)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .transition(.move(edge: .bottom))
                .animation(.easeInOut, value: TransitionView())
                
                }
                
            }
            
                
        .edgesIgnoringSafeArea(.bottom)
    }
        
}

    
        
    


struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
