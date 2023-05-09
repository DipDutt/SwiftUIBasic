//
//  textfieldView.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 28/1/23.
//

import SwiftUI

struct textfieldView: View {
    @State var textfieldText:String = ""
    @State var newextfieldText:String = ""
    
    @State var dataArray:[String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("type something", text: $textfieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(.headline)
                
                ForEach(dataArray, id:\.self) { texts in
                    Text(texts)
                }
                
                Button {
                    
                    if checkText() {
                        saveText()
                    }
                    
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
                .disabled(!checkText())
                
                
                Spacer()
                
            }
            .padding()
            
            .navigationTitle("TextField")
        }
        
        
    }
    
    func checkText()-> Bool {
        if textfieldText.count >= 3 {
            return true
        }
        else {
            return false
        }
        
    }
    
    func saveText() {
        dataArray.append(textfieldText)
        textfieldText = " "
    }
}

struct textfieldView_Previews: PreviewProvider {
    static var previews: some View {
        textfieldView()
    }
}
