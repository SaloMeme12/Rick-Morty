
import Foundation
//Origin represents the place of origin of a character, such as a planet or a dimension.
struct Origin: Codable {

  var name : String? = nil
  var url  : String? = nil

  enum CodingKeys: String, CodingKey {

    case name = "name"
    case url  = "url"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    name = try values.decodeIfPresent(String.self , forKey: .name )
    url  = try values.decodeIfPresent(String.self , forKey: .url  )
 
  }

  init() {

  }

}
