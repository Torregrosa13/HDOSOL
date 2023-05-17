//
//  Components.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 10/5/23.
//

import SwiftUI

struct MyHeader: View{
    
    var text: String
    
    var body: some View{
        VStack(spacing: 15) {
            Image("Logo")
                .resizable()
                .frame(width: 130, height: 130)
                .padding(.top, 30)
            
            Text(text)
                .foregroundColor(Color("OurBlue"))
                .font(.system(size: 30, weight: .bold))
                .padding(.bottom, 30)
            
        }
    }
}

struct TextFieldCustomView: View {
    var placeholder: String
    var image: String
    var imageSize: CGSize
    @Binding var text: String
    @Binding var isFocused: Bool
    
    var body: some View {
        TextField("", text: $text, onEditingChanged: { edited in
            if edited {
                withAnimation(.easeIn){
                    isFocused = true
                }
            } else {
                if text == "" {
                    withAnimation(.easeOut){
                        isFocused = false
                    }
                }
            }
        })
        .disableAutocorrection(true)
        .modifier(TextFieldModifier(placeholder: placeholder, image: image, imageSize: imageSize, isFocused: $isFocused))
        
    }
}

struct TextFieldModifier: ViewModifier {
    var placeholder: String
    var image: String
    var imageSize: CGSize
    @Binding var isFocused: Bool
    
    func body(content: Content) -> some View {
        content
            .frame(height: 60)
            .padding(.leading, 50)
            .background(Color("OurBlue").opacity(0.22))
            .cornerRadius(5)
            .overlay(Rectangle()
                .fill(isFocused ? Color("OurBlue") : Color("OurBlue").opacity(0.7))
                .opacity(isFocused ? 1 : 0.7)
                .frame(height: 5)
                .padding(.top, 20), alignment: .bottom)
            .overlay(
                Image(systemName: image)
                    .resizable()
                    .frame(width: imageSize.width, height: imageSize.height)
                    .foregroundColor(isFocused ? Color("OurBlue"): Color("OurBlue").opacity(0.7))
                    .padding(.leading, 15)
                    .offset(y: -2)
                , alignment: .leading)
            .overlay(
                Text(placeholder)
                    .padding(.leading, 50)
                    .scaleEffect(isFocused ? 0.8 : 1)
                    .offset(x: isFocused ? -1 : 0, y: isFocused ? -18 : -2 )
                    .foregroundColor(isFocused ? Color("OurBlue"): Color("OurBlue").opacity(0.7))
                ,alignment: .leading
            )
    }
}

struct UserView : View{
    
    var userImg: String
    var userName: String
    
    var body: some View{
        VStack{
            Image(userImg)
                .resizable()
                .frame(width: 120, height: 120)
                .padding(.top, 10)
            Text(userName)
                .foregroundColor(Color.black)
                .font(.system(size: 22, weight: .bold))
        }
    }
}

struct ButtonView: View{
    
    var text: String
    
    var body: some View{
        Button {
            
        } label: {
            Text("Entrar")
                .foregroundColor(.white)
                .font(.system(size: 27))
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color("OurBlue"))
                .cornerRadius(15)
                .padding(.bottom, 70)
                .padding(.horizontal, 100)
            
        }
    }
    
}

struct ProjectListView: View {
    
    @State private var projects: [Project] = [
        Project(
            id: UUID(),
            name: "Proyecto 1",
            image: Image("Logo"),
            location: "Ubicación 1",
            startDate: "Inicio 1",
            endDate: "Cierre 1",
            patientType: "Tipo de pacientes 1",
            therapists: "Terapeutas 1"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 2",
            image: Image("Logo"),
            location: "Ubicación 2",
            startDate: "Inicio 2",
            endDate: "Cierre 2",
            patientType: "Tipo de pacientes 2",
            therapists: "Terapeutas 2"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 3",
            image: Image("Logo"),
            location: "Ubicación 3",
            startDate: "Inicio 3",
            endDate: "Cierre 3",
            patientType: "Tipo de pacientes 3",
            therapists: "Terapeutas 3"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 4",
            image: Image("Logo"),
            location: "Ubicación 4",
            startDate: "Inicio 4",
            endDate: "Cierre 4",
            patientType: "Tipo de pacientes 4",
            therapists: "Terapeutas 4"
        ),Project(
            id: UUID(),
            name: "Proyecto 5",
            image: Image("Logo"),
            location: "Ubicación 1",
            startDate: "Inicio 1",
            endDate: "Cierre 1",
            patientType: "Tipo de pacientes 1",
            therapists: "Terapeutas 1"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 6",
            image: Image("Logo"),
            location: "Ubicación 2",
            startDate: "Inicio 2",
            endDate: "Cierre 2",
            patientType: "Tipo de pacientes 2",
            therapists: "Terapeutas 2"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 7",
            image: Image("Logo"),
            location: "Ubicación 3",
            startDate: "Inicio 3",
            endDate: "Cierre 3",
            patientType: "Tipo de pacientes 3",
            therapists: "Terapeutas 3"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 8",
            image: Image("Logo"),
            location: "Ubicación 4",
            startDate: "Inicio 4",
            endDate: "Cierre 4",
            patientType: "Tipo de pacientes 4",
            therapists: "Terapeutas 4"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 9",
            image: Image("Logo"),
            location: "Ubicación 4",
            startDate: "Inicio 4",
            endDate: "Cierre 4",
            patientType: "Tipo de pacientes 4",
            therapists: "Terapeutas 4"
        ),
        Project(
            id: UUID(),
            name: "Proyecto 10",
            image: Image("Logo"),
            location: "Ubicación 10",
            startDate: "Inicio 10",
            endDate: "Cierre 10",
            patientType: "Tipo de pacientes 10",
            therapists: "Terapeutas 10"
        )
    ]


    
    @State private var selectedProjectIndex: Int? = nil

        var body: some View {
            NavigationView {
                List(0..<projects.count) { index in
                    let project = projects[index]
                    HStack(alignment: .center, spacing: 16) {
                        project.image
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        Text(project.name)
                            .foregroundColor(.white)
                            .padding(8)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .onTapGesture {
                        selectedProjectIndex = index
                    }
                    .background(
                        NavigationLink(
                            destination: ProjectDetailView(project: project),
                            tag: index,
                            selection: $selectedProjectIndex,
                            label: { EmptyView() }
                        )
                        .hidden()
                    )
                }
                .navigationBarTitle("Proyectos")
            }
        }
}






