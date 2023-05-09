//
//  SwiftUIView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 15/1/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        Image("Adiyogi")
            .resizable()
            .scaledToFill()
          .frame(width: 300, height:250)
          .frame(width: 400, height: 300)
          
          .frame(maxHeight: .infinity)
            //.frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .ignoresSafeArea()
      
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            
          
            
    }
}
