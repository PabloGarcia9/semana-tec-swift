//
//  ProjectRow.swift
//  semana-tec
//
//  Created by Alumno on 21/03/24.
//

import SwiftUI

struct ProjectRow: View {
    var item : project
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: item.imageURL)){ image in
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
            } placeholder: {
                Text("")
                    .frame(width: 100, height: 100)
                    .background(.gray)
                    .opacity(0.5)
                    .cornerRadius(20)
            }

            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    ProjectRow(item: project(id: 1, name: "Viaje a cancun", people: [1], description: "2024", backgroundColor: ".red", imageURL: ""))
}
