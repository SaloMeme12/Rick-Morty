//
//  CharacterRepository.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 10.02.24.
//

import Foundation

protocol CharacterRepositoryProtocol {
    func fetchCharacters(completion: @escaping ([CharacterData]) -> Void)
}

class CharacterRepository: CharacterRepositoryProtocol {
    func fetchCharacters(completion: @escaping ([CharacterData]) -> Void) {
        let url = "https://restcountries.com/v3.1/all"
        NetworkManager.shared.get(url: url) { (result: Result<[CharacterData], Error>) in
            switch result {
            case .success(let characters):
                completion(characters)
            case .failure(let error):
                print(error)
            }
        }
    }
    

        // Implement fetching characters from the API using networkService
         // Parse the JSON response into an array of Character objects
         // Call the completion handler with the fetched characters
    }

//class CountriesManager: CountriesManagerProtocol {
//
//    func fetchCountries(completion: @escaping (([Country]) -> Void)) {
//        let url = "https://restcountries.com/v3.1/all"
//        NetworkManager.shared.get(url: url) { (result: Result<[Country], Error>) in
//            switch result {
//            case .success(let countries):
//                completion(countries)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
//}
