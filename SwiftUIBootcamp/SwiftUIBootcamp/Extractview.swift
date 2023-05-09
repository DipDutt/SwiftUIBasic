//
//  Extractview.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 17/1/23.
//

import SwiftUI

struct Extractview: View {
    
    @State var background:Color = .pink
    
    var body: some View {
        // background layer
        ZStack {
            background.ignoresSafeArea(.all)
            
            // content layer
            
            contextLayer
        }
        
    }
    
    var contextLayer: some View {
        VStack( spacing: 10) {
                Text("Tittle")
                    .font(.title)
                
                Button {
                    buttonpressed()
                } label: {
                    Text("Press here")
                        .font(.headline)
                        .foregroundColor(.yellow)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
        }
    
    func buttonpressed() {
        background = .yellow
    }
}

struct Extractview_Previews: PreviewProvider {
    static var previews: some View {
        Extractview()
    }
}
