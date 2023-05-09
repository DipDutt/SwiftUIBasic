//
//  animationview1.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 19/1/23.
//

import SwiftUI

struct animationview1: View {
    @State var isAnimated:Bool = false
    let reapeatCount :Int = 3
    let autoverses:Bool = true
    
    var body: some View {
        VStack {
            Button("press here to Animate") {
                withAnimation(Animation
                    .default
                    .repeatCount(reapeatCount, autoreverses: autoverses)) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 20.0: 30.0)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y:isAnimated ? 200 : 0)
               Spacer()
        }
    }
}

struct animationview1_Previews: PreviewProvider {
    static var previews: some View {
        animationview1()
    }
}
