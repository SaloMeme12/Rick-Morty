//
//  CharacterListViewController.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation
import UIKit

class CharacterListViewController: UIViewController {
    // MARK: - Private properties
    private var characterRepository: CharacterRepository!
    private var viewModel: CharactersListViewModelProtocol!
    private var dataSource: CharactersDataSource!
    private var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize the UITableView instance
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), style: .plain)
        
        view.addSubview(tableView)
        setUpConstraits()
        configureViwModel()
        
        fetchTeData() 
    }
    private func configureViwModel(){
        characterRepository = CharacterRepository()
        viewModel = CharacterListViewModel(with: characterRepository)
        dataSource = CharactersDataSource(tableView: tableView, datasource: viewModel)
       
    }
    
    
    private func setUpConstraits(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func fetchTeData(){
        self.viewModel.getCharacterList { characters in
            if !characters.isEmpty {
                       // Data fetched successfully
                       print("Data received from service:", characters)
                   } else {
                       // No data received or error occurred
                       print("No data received from service or error occurred")
                   }
            
        }
    }
    
}
