//
//  CharacterViewModel.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation
// დომეინის მოდელი მოდიფიცირებული(სახეცვლილი) ისეთი ფორმით როგორიც სჭირდება ვიუს

struct CharacterViewModel {
    private var character: CharacterResult
    
    init(character: CharacterResult){
        self.character = character
    }
    var name: String{
        character.name ?? " "
    }
    var spesies: String {
        character.species ?? ""
    }
    var gender: String {
        character.gender ?? " "
    }
}
