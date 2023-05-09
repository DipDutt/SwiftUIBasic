//
//  tabbarView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 30/1/23.
//

import SwiftUI

struct tabbarView: View {
    @State var selectedTab:Int = 0
    @State var icons:[String] = ["pencil.circle","scribble","book.circle"]
    var body: some View {
        
        
        TabView {
           
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    
            }
            
        }
        .clipped()
        .background(Color.gray)
        .frame(width: 300, height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection:$selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("House")
//                }
//                .tag(0)
//
//            Text("Browser Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.mint)
   }
}

struct tabbarView_Previews: PreviewProvider {
    static var previews: some View {
        tabbarView()
    }
}

struct HomeView: View {
    @Binding var selectedTab:Int
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Blueview")
                
                Button {
                    selectedTab = 1
                } label: {
                    Text("go to browser section")
                        .font(.headline)
                        .padding()
                        .background()
                        .cornerRadius(10)
                        .frame(maxWidth:.infinity)
                    
                }

            }
        }
        
    }
}
