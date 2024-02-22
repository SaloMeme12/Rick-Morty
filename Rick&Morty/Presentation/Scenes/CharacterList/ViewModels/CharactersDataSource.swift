//
//  CharactersDataSource.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import UIKit

class CharactersDataSource: NSObject {
    // MARK: Private properties
    
    private var tableView: UITableView
    private var datasource: CharactersListViewModelProtocol
    private var characters: [CharacterResult] = []
    
    init(tableView: UITableView, datasource: CharactersListViewModelProtocol) {
        self.tableView = tableView
        self.datasource = datasource
        
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: "characterCell")
                
    }
    
    private func setUpDelegats(){
       tableView.delegate = self
       tableView.dataSource = self
    }
    
}

extension CharactersDataSource: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue your custom cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? CharacterTableViewCell else {
            fatalError("Failed to dequeue CharacterTableViewCell")
        }
        
        // Configure the cell with data
        let character = characters[indexPath.row]
        cell.configure(with: character)
        
        return cell
    }
    
    
}

