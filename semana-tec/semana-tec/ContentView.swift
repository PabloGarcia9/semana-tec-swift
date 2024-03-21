//
//  ContentView.swift
//  semana-tec
//
//  Created by Alumno on 19/03/24.
//
// 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

import SwiftUI

struct ProjectListView: View {
    @State private var projectsVM = ProjectViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                List(projectsVM.projects) { item in
                    NavigationLink{
                        ProjectDetail(item: item)
                    } label: {
                        ProjectRow(item: item)
                    }
                    
                }
            }
            .navigationTitle("Eventos")
        }
    }
}

#Preview {
    ProjectListView()
}
