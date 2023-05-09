//
//  Picker.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 23/1/23.
//

import SwiftUI

struct picker: View {
    @State var Selection:String = "Filter"
    let options:[String] = ["Most recent", "Most update", "Most Watched","Most Popular"]
    // change the background of picker and textcolor
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.blue
        let attributes:[NSAttributedString.Key:Any] = [.foregroundColor:UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes,for: .selected)
    }
    
    var body: some View {
        
        VStack {
            Picker(selection:$Selection) {
                ForEach(options,id:\.self) { option in
                    Text(option)
                        .tag(option)
                }
            } label: {
               
            }
            .pickerStyle(SegmentedPickerStyle())
        
            Spacer()
        }
        
        
    }
}


struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        picker()
    }
}
