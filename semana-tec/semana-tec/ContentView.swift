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
        ZStack{
            ForEach(projectsVM.projects){ item in
                Text(item.name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
