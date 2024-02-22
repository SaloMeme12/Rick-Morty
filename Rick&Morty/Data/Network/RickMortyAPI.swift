//
//
// RickMortyAPI
//
//  Created by Mcbook Pro on 21.02.24.
//

import Foundation

enum EndPoint: String {
    case characters  = "https://rickandmortyapi.com/api/character"
    case episodes  = "https://rickandmortyapi.com/api/episode"
    case location =  "https://rickandmortyapi.com/api/location"
}

struct RickMortyAPI {
    let baseURL = "https://rickandmortyapi.com/api"
    static func rickAndMortyURL(endpoint: EndPoint, parameters: [String:String]?)->URL{
        return URL(string: "")!
        
    }
}
