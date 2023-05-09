//
//  listView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 26/1/23.
//

import SwiftUI

struct listView: View {
   
    @State var fruitNames:[String] = ["APPLE🍎" ,"ORANGE🍊","BLUEBERRY🫐","PEACH🍑"]
    @State var vegetableNames:[String] = ["ONION🧅","POTATO🥔","CARROT🥕","TOMATO🍅"]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruitNames, id: \.self) { fruits in
                        
                        Text(fruits)
//                            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
//                                Button {
//
//                                } label: {
//                                    Text("Share")
//                                }
//
//
//                            }
                }
                    .onDelete(perform: deleteItems)
                    .onMove(perform:moveItems)
                   
                    
                    
                } header: {
                    Text("fruitList")
                }
                
                Section {
                    ForEach(vegetableNames, id: \.self) { vegetables in
                        
                        Text(vegetables)
                    }
                    
                    
                } header: {
                    Text("Veggies")
                }

               
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocerylist")
            .navigationBarItems(leading:EditButton())
            
            
            
          
            // end of list
        }
        // end of navigation
    }
    
    func deleteItems(indexnumber:IndexSet) {
        fruitNames.remove(atOffsets: indexnumber)
    }
    
    func moveItems(indexnumber:IndexSet, moveposition:Int) {
        fruitNames.move(fromOffsets: indexnumber, toOffset: moveposition)
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        listView()
    }
}
