
import Foundation

struct Info: Codable {

  var count : Int?    = nil
  var pages : Int?    = nil
  var next  : String? = nil
  var prev  : String? = nil

  enum CodingKeys: String, CodingKey {

    case count = "count"
    case pages = "pages"
    case next  = "next"
    case prev  = "prev"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    count = try values.decodeIfPresent(Int.self    , forKey: .count )
    pages = try values.decodeIfPresent(Int.self    , forKey: .pages )
    next  = try values.decodeIfPresent(String.self , forKey: .next  )
    prev  = try values.decodeIfPresent(String.self , forKey: .prev  )
 
  }

  init() {

  }

}