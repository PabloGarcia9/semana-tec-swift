//
//  ContentView.swift
//  semana-tec
//
//  Created by Alumno on 19/03/24.
//
// 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

import SwiftUI

struct ContentView: View {
    @State private var projectsVM = ProjectViewModel()
    
    var body: some View {
        
        ForEach(projectsVM.projects){ item in
            HStack {
                AsyncImage(url: URL(string: item.imageURL)){ image in
                    image
                        .resizable()
                        .frame(width: 100, height: 100)
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
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 1)
        }
    }
}

#Preview {
    ContentView()
}
