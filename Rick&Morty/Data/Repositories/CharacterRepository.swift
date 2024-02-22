//
//  CharacterRepository.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 10.02.24.
//

import Foundation

protocol CharacterRepositoryProtocol {
    func fetchCharacters(completion: @escaping ([CharacterResult]) -> Void)
}

class CharacterRepository: CharacterRepositoryProtocol {
    func fetchCharacters(completion: @escaping ([CharacterResult]) -> Void) {
        let url = "https://rickandmortyapi.com/api/character"
        NetworkManager.shared.get(url: url) { (result: Result<[CharacterResult], Error>) in
            switch result {
            case .success(let characters):
               
                completion(characters)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    }


