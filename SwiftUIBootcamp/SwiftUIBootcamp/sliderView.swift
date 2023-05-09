//
//  sliderView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 24/1/23.
//

import SwiftUI

struct sliderView: View {
    @State var sliderValue:Double = 3
    @State var color:Color = .red
    var body: some View {
        VStack {
            
            HStack {
                Text("Pic the age")
                Text( String(format: "%.0f years", sliderValue))
                    .foregroundColor(color)
            }
            
            Slider(value: $sliderValue, in: 1...5, step: 1.1) {
                Text("Tittle")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                color = .green
            }

        }
        .padding()
    }
}

struct sliderView_Previews: PreviewProvider {
    static var previews: some View {
        sliderView()
    }
}
