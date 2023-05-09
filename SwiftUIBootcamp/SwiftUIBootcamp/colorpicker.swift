//
//  colorpicker.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 23/1/23.
//

import SwiftUI

struct colorpicker: View {
    @State var backgroundColor:Color = .green
    var body: some View {
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("select a color", selection:$backgroundColor , supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .foregroundColor(.white)
                .padding(50)
                
            
        }
       
    }
}

struct colorpicker_Previews: PreviewProvider {
    static var previews: some View {
        colorpicker()
    }
}
