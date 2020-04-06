//
//  GameListRouter.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import UIKit

final class GameListRouter: GameListRouterProtocol, Storyboarded {
    
    static let storyboardName = "GameList"
    
    weak var viewController: UIViewController!
    
    static func assembleModule() -> UIViewController {
        let view: GameListViewController = storyboard.instantiateViewController()
        let presenter = GameListPresenter()
        let router = GameListRouter()
        let localDataManager = GameListLocalDataManager()
        let remoteDataManager = GameListRemoteDataManager()
        let repository = GameListRepository(localDataManager: localDataManager, remoteDataManager: remoteDataManager)
        let interactor = GameListInteractor(repository: repository)
        
        view.presenter = presenter
        
        router.viewController = view
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        repository.output = interactor
        
        localDataManager.output = repository
        remoteDataManager.output = repository
        
        return view
    }
    
}
