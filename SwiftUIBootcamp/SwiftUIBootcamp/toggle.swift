//
//  toggle.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 22/1/23.
//

import SwiftUI

struct toggle: View {
    @State var istoggle:Bool = false
    var body: some View {
        VStack {
            Text("Wi-Fi")
            Toggle(isOn:$istoggle ) {
                Label("Wifi", systemImage: "wifi")
            }
            .tint(Color.red)
            Spacer()
        }
        .padding()
    }
}

struct toggle_Previews: PreviewProvider {
    static var previews: some View {
        toggle()
    }
}
