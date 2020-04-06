//
//  GameListPresenter.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import UIKit

final class GameListPresenter: GameListPresenterProtocol {
    
    weak var view: GameListViewProtocol!
    var router: GameListRouterProtocol!
    var interactor: GameListInteractorProtocol!

    func viewDidiLoad() {
        interactor.getGameList()
    }
}


// MARK: - TimerBeverageListInteractorOutput
extension GameListPresenter: GameListInteractorOutput {
    
    func setGameList(_ gameList: [Game]) {
        view.updateTableView(gameList: gameList)
    }
    
}

