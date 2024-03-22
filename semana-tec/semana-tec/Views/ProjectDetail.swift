//
//  ProjectDetail.swift
//  semana-tec
//
//  Created by Alumno on 21/03/24.
//

import SwiftUI

struct ProjectDetail: View {
    var item: project
    
    var body: some View {
        NavigationStack{
            TabView{
                ExpensesView(project: item)
                    .tabItem{
                        Label("Gastos", systemImage: "dollarsign.circle")
                    }
            }
        }
    }
}

#Preview {
    ProjectDetail(item: project(id: 1, name: "Viaje a cancun", people: [1], description: "2024", backgroundColor: ".red", imageURL: ""))
}
