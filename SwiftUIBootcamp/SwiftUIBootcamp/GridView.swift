//
//  GridView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 17/1/23.
//

import SwiftUI
struct GridView: View {
    let Columns = [
        GridItem(.flexible(), spacing: 5.0, alignment: nil),
        GridItem(.flexible(), spacing: 5.0, alignment: nil),
        GridItem(.flexible(), spacing: 5.0, alignment: nil)
        
        
    ]
    
    var body: some View {
        ScrollView {
            
           Rectangle()
                .frame(width:400,height: 400)
            
            LazyVGrid(columns: Columns, alignment: .center, spacing: 5, pinnedViews: [.sectionHeaders]) {
                
                Section {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.blue)
                            .shadow(radius: 10.0)
                        .frame(height: 50)
                        
                    }
                } header: {
                    Text("Tv Shows")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                
                
                Section {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.blue)
                            .shadow(radius: 10.0)
                        .frame(height: 50)
                        
                    }
                } header: {
                    Text("Movies")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                

                
            }
        }
        .padding()
    }
}





struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
