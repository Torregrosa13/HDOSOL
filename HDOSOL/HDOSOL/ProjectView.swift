//
//  ProjectView.swift
//  HDOSOL
//
//  Created by Carlos García Torregrosa on 16/5/23.
//

import SwiftUI

struct ProjectView: View {
    
    @State var projectCalled: String = ""
    @State var projectFocused = false
    
    
    var body: some View {
        
        VStack{
            
            MyHeader(text: "PROYECTOS")
            
            textFieldsView
            
            Spacer()
            
            ProjectListView()
        }
        
    }
    
    var textFieldsView: some View {
        VStack(spacing: 12) {
            
            TextFieldCustomView(placeholder: "Buscar Proyecto", image: "magnifyingglass.circle", imageSize: CGSize(width: 17, height: 20), text: $projectCalled, isFocused: $projectFocused)
            
            
        }
        .padding(.horizontal)
    }
    
    
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
