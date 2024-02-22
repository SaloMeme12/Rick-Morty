//
//  CharacterListCell.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 13.02.24.
//

import Foundation
import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    private let characterImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 2, height: 20))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let speciesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let genderLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupViews() {
        addSubview(characterImageView)
        addSubview(nameLabel)
        addSubview(speciesLabel)
        addSubview(genderLabel)
        
        NSLayoutConstraint.activate([
            characterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            characterImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            characterImageView.widthAnchor.constraint(equalToConstant: 50),
            characterImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 16),
            
            speciesLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            speciesLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            speciesLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            genderLabel.topAnchor.constraint(equalTo: speciesLabel.bottomAnchor, constant: 4),
            genderLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            genderLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
    // MARK: - Configure
    
    func configure(with character: CharacterViewModel) {
        nameLabel.text = character.name
        speciesLabel.text = "Species: \(character.spesies ?? "Unknown")"
        genderLabel.text = "Gender: \(character.gender ?? "Unknown")"
        
//        // Set character image (assuming it's stored as a URL)
//        if let imageUrlString = character.image,
//           let imageUrl = URL(string: imageUrlString) {
//            // You can use a library like SDWebImage to handle image loading asynchronously
//            // For simplicity, let's assume you have an image stored locally
//            characterImageView.image = UIImage(named: "placeholder_image")
//        }
    }
}

