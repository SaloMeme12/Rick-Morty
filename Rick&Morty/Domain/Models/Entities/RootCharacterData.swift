
import Foundation

struct RootCharacterData : Codable {

  var info    : Info?      = Info()
  var results : [CharacterResult]? = []

  enum CodingKeys: String, CodingKey {

    case info    = "info"
    case results = "results"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    info    = try values.decodeIfPresent(Info.self      , forKey: .info    )
    results = try values.decodeIfPresent([CharacterResult].self , forKey: .results )
 
  }

  init() {

  }

}
