//
//  CharacterListViewController.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation
import UIKit

class CharacterListViewController: UIViewController {
    
    // MARK: - IBOutlets
    private var tableView: UITableView?
    
    // MARK: - Private properties
    private var viewModel: CharactersListViewModelProtocol!
    private var dataSource: CharactersDataSource!
    private var characterRepository: CharacterRepository!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetUp()
        configureViewModel()
        fetchTeData()
    }
    
    private func tableViewSetUp(){
        // Initialize the UITableView instance
        let tableView = UITableView(frame: CGRect.zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        // Register cell classes if needed
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "characterCell")
        
        view.addSubview(tableView)
        
        // Set constraints
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        self.tableView = tableView
    }
    
    private func configureViewModel(){
        characterRepository = CharacterRepository()
        viewModel = CharacterListViewModel(with: characterRepository)
        if let tableView = tableView {
            dataSource = CharactersDataSource(tableView: tableView, viewModel: viewModel)
        } else {
            fatalError("tableView is nil after setup")
        }
    }
    
    func fetchTeData(){
        dataSource?.refresh()
    }
}
