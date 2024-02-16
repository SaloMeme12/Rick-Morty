//
//  EpisodeRepository.swift
//  Rick&Morty
//
//  Created by Mcbook Pro on 10.02.24.
//

import Foundation


protocol EpisodeRepositoryProtocol {
    func fetchEpisodes(completion: @escaping ([EpisodeData]) -> Void)
}

class EpisodeRepository: EpisodeRepositoryProtocol {
    func fetchEpisodes(completion: @escaping ([EpisodeData]) -> Void) {
        
    }
    
    
}
