//
//  ProjectDetail.swift
//  semana-tec
//
//  Created by Alumno on 21/03/24.
//

import SwiftUI

struct ProjectDetail: View {
    var item : project
    var personVM = PersonViewModel()
    
    var body: some View {
        NavigationStack{
            TabView{
                ExpensesView()
                    .tabItem{
                        Label("Gastos", systemImage: "dollarsign.circle")
                    }
                PeopleView()
                    .tabItem{
                        Label("Integrantes", systemImage: "person.fill")
                    }
            }
        }
    }
}

#Preview {
    ProjectDetail(item: project(id: 1, name: "Viaje a cancun", people: [1], description: "2024", backgroundColor: ".red", imageURL: ""))
}
