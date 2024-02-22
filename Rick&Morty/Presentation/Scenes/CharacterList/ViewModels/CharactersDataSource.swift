//
//  CharactersDataSource.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//
import Foundation
import UIKit

class CharactersDataSource: NSObject {
    
    // MARK: Private properties
    
    private var tableView: UITableView
    private var viewModel: CharactersListViewModelProtocol
    private var charactersList: [CharacterViewModel] = []
    
    init(tableView: UITableView, viewModel: CharactersListViewModelProtocol) {
        self.tableView = tableView
        self.viewModel = viewModel
        super.init()
        setUpDelegats()
        
        tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: "characterCell")
        
    }
    
    private func setUpDelegats(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func refresh() {
        viewModel.getCharacterList(completion: {characters in
            self.charactersList.append(contentsOf: characters)
            self.tableView.reloadData()
        })
    }
}
extension CharactersDataSource:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        charactersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell with data
        let character = charactersList[indexPath.row]
        // Dequeue your custom cell
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? CharacterTableViewCell else {
            fatalError("Failed to dequeue CharacterTableViewCell")
        }
        cell.configure(with: character)
        
        return cell
    }
}
