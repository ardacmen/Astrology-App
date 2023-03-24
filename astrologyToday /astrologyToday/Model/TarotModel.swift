// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct TarotModelResult: Codable {
    let nhits: Int
    let cards: [Cards]
}

// MARK: - Card
struct Cards: Codable {
    let type: TypeEnum
    let nameShort, name, value: String
    let valueInt: Int
    let meaningUp, meaningRev, desc: String
    let suit: String?

    enum CodingKeys: String, CodingKey {
        case type
        case nameShort = "name_short"
        case name, value
        case valueInt = "value_int"
        case meaningUp = "meaning_up"
        case meaningRev = "meaning_rev"
        case desc, suit
    }
}

enum TypeEnum: String, Codable {
    case major = "major"
    case minor = "minor"
}

