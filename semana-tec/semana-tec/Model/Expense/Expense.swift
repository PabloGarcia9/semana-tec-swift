import Foundation

struct expense: Decodable, Identifiable{
    var id: Int
    var idProject: Int
    var idPerson: Int
    var name: String
    var value: Double
}
