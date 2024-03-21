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
    var people: [Int]
    var description: String
    var backgroundColor: String
    var imageURL: String
}
