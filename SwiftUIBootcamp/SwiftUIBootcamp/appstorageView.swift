//
//  appstorageView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 31/1/23.
//

import SwiftUI

struct appstorageView: View {
    @AppStorage("name") var currentUserName:String?
    //@State var currentUserName:String?
    var body: some View {
        VStack {
            Text(currentUserName ?? "no name found")
            
            Button("SAVE") {
                currentUserName = "Dip"
            }
        }
    }
}

struct appstorageView_Previews: PreviewProvider {
    static var previews: some View {
        appstorageView()
    }
}
