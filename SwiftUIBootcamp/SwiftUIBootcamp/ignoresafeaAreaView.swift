//
//  ignoresafeaAreaView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 17/1/23.
//

import SwiftUI

struct ignoresafeaAreaView: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Text("Scroll the view to sell all photos")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                
                ForEach(0..<10) { _ in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .frame(height:150)
                        .shadow(radius: 10)
                        .padding()
                }
                
            }
            
        }
       
        
    }
}

struct ignoresafeaAreaView_Previews: PreviewProvider {
    static var previews: some View {
        ignoresafeaAreaView()
    }
}
