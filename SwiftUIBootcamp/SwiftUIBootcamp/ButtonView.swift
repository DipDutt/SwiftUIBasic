//
//  ButtonView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 17/1/23.
//

import SwiftUI

struct ButtonView: View {
    
    @State var title:String = /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/
    var body: some View {
        
        VStack(spacing: 20.0) {
            Text(title)
            
            Button {
                self.title = " welcome to SwiftUI"
            } label: {
                Text("press the button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
                    .frame(maxWidth:.infinity)
                    .shadow(radius: 20)
            }

            
        }
        
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
