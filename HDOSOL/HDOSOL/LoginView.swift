//
//  LoginView.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 12/5/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @State var showRegister: Bool = false
    @State var showHome:Bool = false
    
    @State var emailFocused = false
    @State var passwordFocused = false
    
    var body: some View {
        VStack(spacing:10){
            
            MyHeader(text: "ACCESO")
            
            textFieldsView
            
            Spacer()
            
            ButtonView(text: "Entrar")
            
            ButtonView(text: "Registro")
            
        }
        .padding(.top, 20)
    }
    var textFieldsView: some View {
        VStack(spacing: 40) {
            
            TextFieldCustomView(placeholder: "Email", image: "envelope", imageSize: CGSize(width: 23, height: 17), text: $email, isFocused: $emailFocused)
            
            TextFieldCustomView(placeholder: "Password", image: "lock.fill", imageSize: CGSize(width: 17, height: 23), text: $password, isFocused: $passwordFocused)
        }
        .padding(.horizontal)
    }
    
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
