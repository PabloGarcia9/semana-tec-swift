//
//  ProjectViewModel.swift
//  semana-tec
//
//  Created by Alumno on 20/03/24.
//

import Foundation

@Observable
class ProjectViewModel{
    var projects = [project]()
    
    init() {
        projects = load("ProjectData.json")
    }
    
    func load<T: Decodable> (_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else{
                fatalError("Couldn't find \(filename) from main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't find \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
