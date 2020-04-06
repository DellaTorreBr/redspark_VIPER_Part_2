//
//  SceneDelegate.swift
//  games
//
//  Created by Andre M. Della Torre on 03/02/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        window = UIWindow(windowScene: windowScene)
        let initialViewController = GameListRouter.assembleModule()
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()
        
    }
    
}

