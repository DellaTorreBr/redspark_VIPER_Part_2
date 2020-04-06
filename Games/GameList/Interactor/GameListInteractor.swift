//
//  GameListInteractor.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation

final class GameListInteractor: GameListInteractorProtocol {
    
    weak var output: GameListInteractorOutput!
    
    private let repository: GameListRepositoryProtocol
    
    private var gameList: [Game] = []
    
    init(repository: GameListRepositoryProtocol) {
        self.repository = repository
    }
    
    func getGameList() {
        repository.getGameList()
    }
    
    private func sort(gameList: inout [Game]) {
        gameList.sort(by: {
            return $0.title < $1.title
        })
    }
    
}

// MARK: - GameListRepositoryOutput
extension GameListInteractor: GameListRepositoryOutput {
    
    func setGameList(_ gameList: [Game]) {
        self.gameList = gameList
        sort(gameList: &self.gameList)
        output.setGameList(self.gameList)
    }
    
}
