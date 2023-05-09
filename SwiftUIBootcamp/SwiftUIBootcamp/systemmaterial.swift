//
//  systemmaterial.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 24/1/23.
//

import SwiftUI

struct systemmaterial: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
                
            }   .frame(height: 350.0)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(30)
        }
        .background(
        Image("Adiyogi")
        )
        .ignoresSafeArea()
    }
}

struct systemmaterial_Previews: PreviewProvider {
    static var previews: some View {
        systemmaterial()
    }
}
