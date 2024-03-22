//
//  PeopleView.swift
//  semana-tec
//
//  Created by Alumno on 21/03/24.
//

import SwiftUI

struct PeopleView: View {
    var project: project
    var personVM = PersonViewModel()
    
    var body: some View {
        List{
            
            ForEach(personVM.people){ item in
                if(project.people.contains(item.id)){
                    Text(item.name)
                }
            }
        }
    }
}

#Preview {
    PeopleView(project: project(id: 1, name: "", people: [], description: "", backgroundColor: "", imageURL: ""))
}
