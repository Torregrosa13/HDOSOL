//
//  SplashScreen.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 17/5/23.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {

        if isActive{
            LoginView()
        }else{
            VStack{
                VStack{
                    Image("Logo")
                        .resizable()
                        .frame(width: 320, height: 320)
                    Text("HDOSOL")
                        .font(Font.custom("Baskerville-bold", size: 52))
                        .foregroundColor(Color("OurBlue").opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
