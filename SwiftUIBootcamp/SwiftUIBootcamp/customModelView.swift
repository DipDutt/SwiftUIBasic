//
//  customModelView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 29/1/23.
//

import SwiftUI

struct userDetails:Identifiable {
    let id:String = UUID().uuidString
    let name:String
    let userName:String
    let followers:Int
}

struct customModelView: View {
    @State var users:[userDetails] = [
        userDetails(name: "Dip", userName: "@iduttdip", followers: 50),
        userDetails(name: "Diptha", userName: "@isahadiptha", followers: 200),
        userDetails(name: "Devodyuti", userName: "@dadevodyutiAich", followers: 220)]
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 40, height: 40)
                        VStack(spacing:5.0) {
                            Text(user.name)
                                .font(.headline)
                            Text(user.userName)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("\(user.followers)")
                            
                        }
                        if user.followers > 100 {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                      }
                        
                    }
                    
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("USERLISTS")
        }
    }
}

struct customModelView_Previews: PreviewProvider {
    static var previews: some View {
        customModelView()
    }
}
