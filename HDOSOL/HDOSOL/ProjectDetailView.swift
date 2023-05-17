//
//  ProjectDetailView.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 17/5/23.
//

import SwiftUI

struct ProjectDetailView: View {
    var project: Project

    var body: some View {
        VStack {
            
            MyHeader(text: "HDOSOL")
            
            Text("Nombre: \(project.name)")
            Text("Ubicación: \(project.location)")
            Text("Inicio: \(project.startDate)")
            Text("Cierre: \(project.endDate)")
            Text("Tipo de Pacientes: \(project.patientType)")
            Text("Terapeutas: \(project.therapists)")
            
            Spacer()
        }
        .navigationBarTitle(Text("Detalles del Proyecto"))
    }
}


struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView(project: Project(id: UUID(), name: "Proyecto de ejemplo", image: Image("project_image"), location: "Ubicación de ejemplo", startDate: "01/01/2023", endDate: "31/12/2023", patientType: "Tipo de pacientes de ejemplo", therapists: "Terapeutas de ejemplo"))
    }
}
