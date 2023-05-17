//
//  ContentView.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 9/5/23.
//

import SwiftUI



struct RegisterView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var repeatP: String = ""
    @State var email: String = ""
    @State var phone: String = ""

    @State var showLogin:Bool = false

    @State var usernameFocused = false
    @State var passwordFocused = false
    @State var repeatFocused = false
    @State var emailFocused = false
    @State var phoneFocused = false
    
    var body: some View {
        VStack() {
            
            MyHeader(text: "REGISTRO")
            
            textFieldsView
            
            Spacer()
            
            ButtonView(text: "Entrar")
        }
        .padding(.top, 20)
        
        
    }
    var textFieldsView: some View {
        VStack(spacing: 12) {
            
            TextFieldCustomView(placeholder: "Username", image: "person.fill", imageSize: CGSize(width: 17, height: 20), text: $username, isFocused: $usernameFocused)
            
            
            TextFieldCustomView(placeholder: "Email", image: "envelope", imageSize: CGSize(width: 23, height: 17), text: $email, isFocused: $emailFocused)
            
            TextFieldCustomView(placeholder: "Password", image: "lock.fill", imageSize: CGSize(width: 17, height: 23), text: $password, isFocused: $passwordFocused)
            
            TextFieldCustomView(placeholder: "Phone number", image: "iphone", imageSize: CGSize(width: 17, height: 25), text: $phone, isFocused: $phoneFocused)
            
            TextFieldCustomView(placeholder: "DNI", image: "person.crop.rectangle.fill", imageSize: CGSize(width: 25, height: 20), text: $repeatP, isFocused: $repeatFocused)
            
        }
        .padding(.horizontal)
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

