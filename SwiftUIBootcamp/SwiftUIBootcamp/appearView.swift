//
//  appearView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 29/1/23.
//

import SwiftUI

struct appearView: View {
    @State var tittle:String = "new next"
    @State var Backgroundcolor: Color = .green
   
    var body: some View {
        VStack {
            Text(tittle)
            Backgroundcolor.edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            print("tittle appear")
            print("background appear")
        }
         
    }
}





struct appearView_Previews: PreviewProvider {
    static var previews: some View {
        appearView()
    }
}


