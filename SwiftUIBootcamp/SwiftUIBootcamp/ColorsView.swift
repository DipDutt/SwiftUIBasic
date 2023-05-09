//
//  ColorsView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 14/1/23.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color("Colorthemes"))
            .frame(width: 100, height: 100)
            .shadow(color: Color.orange, radius: 30, x: 20, y: 20)
        
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
