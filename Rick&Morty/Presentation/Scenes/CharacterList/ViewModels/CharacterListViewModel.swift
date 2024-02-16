//
//  CharacterListViewModel.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation

protocol CharactersListViewModelProtocol: AnyObject {
       func getCharacterList(completion: @escaping (([CharacterViewModel]) -> Void))
       
       init(with characterRepository: CharacterRepositoryProtocol)

}

class CharacterListViewModel: CharactersListViewModelProtocol {
    
    let characterRepository: CharacterRepositoryProtocol
    
    required init(with characterRepository: CharacterRepositoryProtocol)  {
        self.characterRepository = characterRepository
    }
    
    func getCharacterList(completion: @escaping (([CharacterViewModel]) -> Void)) {
        characterRepository.fetchCharacters { characters in
            DispatchQueue.main.async {
                
                let charactersViewModel =  characters.map { CharacterViewModel(character: $0) }
                completion(charactersViewModel)
            }
        }
    }
    
    

    
}
