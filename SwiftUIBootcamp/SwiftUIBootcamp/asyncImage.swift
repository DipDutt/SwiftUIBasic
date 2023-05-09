//
//  asyncImage.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 25/4/23.
//

import SwiftUI

struct asyncImage: View {
    let url = URL(string: "https://picsum.photos/400")
    var body: some View {
            VStack {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }
            }
            .padding()
        }
    }



struct asyncImage_Previews: PreviewProvider {
    static var previews: some View {
        asyncImage()
    }
}
