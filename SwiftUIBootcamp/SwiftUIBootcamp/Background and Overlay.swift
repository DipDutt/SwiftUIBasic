//
//  Background and Overlay.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 15/1/23.
//

import SwiftUI

struct Background_and_Overlay: View {
    
    
    var body: some View {
       
        Image("Adiyogi")
            .resizable()
            .scaledToFill()
          .frame(width: 300, height:300)
          .shadow(color: .black, radius: 30, x: 10, y: 20)
          .frame(maxWidth: .infinity)
        
          .overlay (
          Text("Adiyogi Adobe")
            .font(.system(size: 15, weight: .semibold, design: .default))
                .foregroundColor(.white),
          alignment: .center
                
          )
         .clipShape(
           Circle()
     )
    }
}

struct Background_and_Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Background_and_Overlay()
    }
}
