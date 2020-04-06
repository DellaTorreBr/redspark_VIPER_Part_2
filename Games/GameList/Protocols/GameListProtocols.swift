//
//  GameListProtocols.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Interactor
protocol GameListInteractorProtocol: class {
    
    var output: GameListInteractorOutput! { get set }
    
    func getGameList()
}

protocol GameListInteractorOutput: class {
    
    func setGameList(_ gameList: [Game])
    
}

// MARK: - DataManager

//Local
protocol GameListLocalDataManagerProtocol: class {
    
    var output: GameListLocalDataManagerOutput! { get set }
    
    func getGameList() -> [Game]?
    func saveGameList(_ gameList: [Game])
}

protocol GameListLocalDataManagerOutput: class {
    
}

// Remote
protocol GameListRemoteDataManagerProtocol: class {
    
    var output: GameListRemoteDataManagerOutput! { get set }
    
    func getGameList()
    
}

protocol GameListRemoteDataManagerOutput: class {
    
    func setRemoteGameList(_ gameList: [Game])
    
}

// MARK: - Repository
protocol GameListRepositoryProtocol {
    
    var output: GameListRepositoryOutput! { get set }
    
    func getGameList()
}

protocol GameListRepositoryOutput: class {
    
    func setGameList(_ gameList: [Game])
    
}


// MARK: - Presenter
protocol GameListPresenterProtocol: class {
    
    var view: GameListViewProtocol! { get set }
    var router: GameListRouterProtocol! { get set }
    var interactor: GameListInteractorProtocol! { get set }
    
    func viewDidiLoad()
    
}

// MARK: - View
protocol GameListViewProtocol: class {
    
    var presenter: GameListPresenterProtocol! { get set }
    
    func updateTableView(gameList: [Game])
    
}

// MARK: - Router
protocol GameListRouterProtocol: class {
    
    var viewController: UIViewController! { get set }
    
}


