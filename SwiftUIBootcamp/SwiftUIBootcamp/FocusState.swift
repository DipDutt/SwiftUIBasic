//
//  FocusState.swift
//  SwiftUIBootcamp
//
//  Created by Dip Dutt on 25/4/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
enum stateChange: Hashable {
        case username
        case password
}
    
    @State var textField:String = ""
    @State var passwordField:String = ""
    @FocusState var twoState:stateChange?
    
    var body: some View {
    VStack {
        TextField("enter your email here", text: $textField)
            .focused($twoState, equals: .username)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
        
        TextField("enter your password here", text: $passwordField)
            .focused($twoState, equals: .password)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.gray.brightness(0.3))
            .cornerRadius(10)
        
        
        Button("Submit") {
            let usernamevalid = !textField.isEmpty
            let passwordvalid = !passwordField.isEmpty
            
            if usernamevalid && passwordvalid {
                print("sign up")
            }
            else if usernamevalid {
                twoState = .password
            }
            else {
                twoState = .username
            }
        }
    }
    .padding(45)
   }
}

struct FocusState_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
