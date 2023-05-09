//
//  StacksView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 15/1/23.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 80)
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("2")
                .font(.headline)
                .background(
                    Circle()
                        .fill(.orange)
                        .frame(width: 80, height: 80)
                )
            
            Circle()
                .fill(.red)
                .frame(width:80 , height: 80)
                .overlay(
                    Text("3")
                        .font(.title3)
                        .foregroundColor(.indigo)
                    
                )
            
            Spacer()
            
            HStack(spacing: 40) {
                ZStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 80, height: 80)
                    
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                Text("2")
                    .font(.headline)
                    .background(
                        Circle()
                            .fill(.orange)
                            .frame(width: 80, height: 80)
                    )
                
                Circle()
                    .fill(.red)
                    .frame(width:80 , height: 80)
                    .overlay(
                        Text("3")
                            .font(.title3)
                            .foregroundColor(.indigo)
                        
                    )
            }
            
        }
        
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
