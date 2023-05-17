//
//  HomeView.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 16/5/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var userImg = "User"
    @State var userName: String = "Usuario"
    
    var body: some View {
        VStack{
            MyHeader(text: "HDOSOL")
            
            UserView(userImg: "User", userName: "Carlos García Torregrosa")
              
            HStack(spacing: 50){
                
                VStack{
                    Image(systemName: "list.bullet")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text("Proyectos")
                        .padding(.top, 15)
                }
                
                VStack{
                    Image(systemName: "chart.line.uptrend.xyaxis")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text("Gráficas")
                        .padding(.top, 15)
                }
                
                VStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 70, height: 70)
                    Text("Pacientes")
                        .padding(.top, 15)
                }
            }
            .padding(.top, 90)
            
            Spacer()
            
                    }
        .padding(.top, 20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
