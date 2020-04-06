//
//  GameListRepository.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation

final class GameListRepository: GameListRepositoryProtocol {
    
    weak var output: GameListRepositoryOutput!
    
    fileprivate let localDataManager: GameListLocalDataManagerProtocol
    fileprivate let remoteDataManager: GameListRemoteDataManagerProtocol
    
    init(localDataManager: GameListLocalDataManagerProtocol,
         remoteDataManager: GameListRemoteDataManagerProtocol) {
        self.localDataManager = localDataManager
        self.remoteDataManager = remoteDataManager
    }
    
    func getGameList() {
        
        if let gameList = localDataManager.getGameList() {
            output.setGameList(gameList)
        } else {
            remoteDataManager.getGameList()
        }
        
    }
    
    private func saveGameList(gameList: [Game]) {
        localDataManager.saveGameList(gameList)
    }
    
}

// MARK: - GameListLocalDataManagerOutput
extension GameListRepository: GameListLocalDataManagerOutput {
    
}

// MARK: GameListRemoteDataManagerOutput
extension GameListRepository: GameListRemoteDataManagerOutput {
    
    func setRemoteGameList(_ gameList: [Game]) {
        saveGameList(gameList: gameList)
        output.setGameList(gameList)
    }
    
}
