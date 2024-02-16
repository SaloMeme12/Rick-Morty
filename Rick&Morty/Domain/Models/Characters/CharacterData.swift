//
//  CharacterData.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation
struct CharacterData: Codable {

  var id       : Int?      = nil
  var name     : String?   = nil
  var status   : String?   = nil
  var species  : String?   = nil
  var type     : String?   = nil
  var gender   : String?   = nil
  var origin   : Origin?   = Origin()
  var location : Location? = Location()
  var image    : String?   = nil
  var episode  : [String]? = []
  var url      : String?   = nil
  var created  : String?   = nil

  enum CodingKeys: String, CodingKey {

    case id       = "id"
    case name     = "name"
    case status   = "status"
    case species  = "species"
    case type     = "type"
    case gender   = "gender"
    case origin   = "origin"
    case location = "location"
    case image    = "image"
    case episode  = "episode"
    case url      = "url"
    case created  = "created"
  
  }
// deserialization
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    id       = try values.decodeIfPresent(Int.self      , forKey: .id       )
    name     = try values.decodeIfPresent(String.self   , forKey: .name     )
    status   = try values.decodeIfPresent(String.self   , forKey: .status   )
    species  = try values.decodeIfPresent(String.self   , forKey: .species  )
    type     = try values.decodeIfPresent(String.self   , forKey: .type     )
    gender   = try values.decodeIfPresent(String.self   , forKey: .gender   )
    origin   = try values.decodeIfPresent(Origin.self   , forKey: .origin   )
    location = try values.decodeIfPresent(Location.self , forKey: .location )
    image    = try values.decodeIfPresent(String.self   , forKey: .image    )
    episode  = try values.decodeIfPresent([String].self , forKey: .episode  )
    url      = try values.decodeIfPresent(String.self   , forKey: .url      )
    created  = try values.decodeIfPresent(String.self   , forKey: .created  )
 
  }

  init() {

  }

}
