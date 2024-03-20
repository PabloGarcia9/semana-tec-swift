//
//  Project.swift
//  semana-tec
//
//  Created by Alumno on 20/03/24.
//

import Foundation

struct project: Decodable, Identifiable{
    var id: Int
    var name: String
    var people: [String]
    var description: String
    var backgroundColor: String
    var imageURL: String
}
