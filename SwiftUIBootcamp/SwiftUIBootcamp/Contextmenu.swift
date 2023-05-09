//
//  Contextmenu.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 22/1/23.
//

import SwiftUI

struct Contextmenu: View {
    var body: some View {
        VStack(alignment: .leading, spacing:10) {
        Image(systemName: "camera.circle")
            .font(.largeTitle)
            .foregroundColor(.red)
        Text("put the finger on the camera")
                .font(.headline)
                .foregroundColor(.white)
        
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
        .contextMenu {
            Text("Take a selfie")
            Text("Take a Photo")
            Text("Take video")
            
        
            
        }
    }
}

struct Contextmenu_Previews: PreviewProvider {
    static var previews: some View {
        Contextmenu()
    }
}
