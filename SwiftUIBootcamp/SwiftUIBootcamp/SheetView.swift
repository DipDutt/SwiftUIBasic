//
//  SheetView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 20/1/23.
//

import SwiftUI

struct SheetView: View {
    @State var showsheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                Button {
                    showsheet.toggle()
                } label: {
                    Text("press here")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(20)
                        .background(Color.blue)
                        .cornerRadius(20)
                }

            }
            .padding()
            .sheet(isPresented: $showsheet) {
                secondView()
            }
            
        }
        
    }
}


struct secondView: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        ZStack(alignment:.topLeading) {
            
            Color.red.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                }

            }
            
        }
        
        
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
