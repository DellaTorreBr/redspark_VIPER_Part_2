//
//  GameListLocalDataManager.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation

final class GameListLocalDataManager: GameListLocalDataManagerProtocol {
    
    private enum Constants {
        static let gameListDataKey = "gameList"
    }
    
    weak var output: GameListLocalDataManagerOutput!
    
    private lazy var userDefault = UserDefaults.standard
    
    func saveGameList(_ gameList: [Game]) {
        let gameListData = NSKeyedArchiver.archivedData(withRootObject: gameList)
        userDefault.setValue(gameListData, forKey: Constants.gameListDataKey)
        userDefault.synchronize()
    }
    
    func getGameList() -> [Game]? {
        if let gameListData = userDefault.object(forKey: Constants.gameListDataKey) as? Data,
            let gameList = NSKeyedUnarchiver.unarchiveObject(with: gameListData) as? [Game] {
            return gameList
        }
        
        return nil
    }

}
