//
//  BindingView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 18/1/23.
//

import SwiftUI

struct BindingView: View {
    @State var background:Color = .pink
    var body: some View {
        ZStack {
            background.ignoresSafeArea(.all)
            
            // content layer
            buttonView(background: $background)

            
        }
    }
}


struct buttonView: View {
    @Binding var background:Color
    @State  var cornerRadius: CGFloat = 20.0
    var body: some View {
     Button {
          background = .mint
         cornerRadius = 10.0
      } label: {
          Text("Press the button")
              .font(.title)
              .foregroundColor(.white)
              .padding(.horizontal)
              .background(.blue)
              .cornerRadius(cornerRadius)
      }
   }

}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
