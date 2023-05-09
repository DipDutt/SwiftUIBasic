//
//  Init and  enum.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 16/1/23.
//

import SwiftUI

struct Init_and__enum: View {
    
    let backgroundcolor:Color
    let count:Int
    let tittle: String
    
    
    init(count:Int, fruit:Fruits) {
         self.count = count
        
        if fruit == .apples {
            self.tittle = "apples"
            self.backgroundcolor = .red
        }
        
        else {
            self.tittle = "oranges"
            self.backgroundcolor = .orange
        }
        
    
        
    }
    
    enum Fruits {
        
        case apples
        case oranges
        
    }
    
    var body: some View {
        VStack(spacing:10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(tittle)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundcolor)
        .cornerRadius(10)
        
       
    }
}

struct Init_and__enum_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Init_and__enum(count: 55, fruit: .apples)
                
            Init_and__enum(count: 50, fruit: .oranges)
        }
        
    }
}
