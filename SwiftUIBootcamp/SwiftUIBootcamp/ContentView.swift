//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 14/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world! my name is dip and iam starting my first line of code with nick and i am also excitig to do lot more of staff".capitalized)
            .font(.system(size: 24,weight: .semibold, design: .rounded))
            .foregroundColor(Color(.darkGray))
            .underline(true, color: .red)
            .baselineOffset(5)
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 200, alignment: .center)
            .minimumScaleFactor(0.2)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
