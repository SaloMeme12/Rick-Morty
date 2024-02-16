//
//  CharacterListViewController.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation
import UIKit

class CharacterListViewController: UIViewController  {
    
    // MARK: - Private properties
    
    private var vieWModel : CharacterListViewModel!
    private var dataSource: CharactersDataSource!
    private var characterRepository: CharacterRepositoryProtocol!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
           
        }
    
    private func configureViewModel() {
    characterRepository = CharacterRepository()
        
           
}
        
    
    
}
