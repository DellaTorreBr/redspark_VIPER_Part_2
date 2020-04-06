//
//  GameListRemoteDataManager.swift
//  Games
//
//  Created on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation

final class GameListRemoteDataManager: GameListRemoteDataManagerProtocol {
    
    weak var output: GameListRemoteDataManagerOutput!
    
    func getGameList() {
        // MOCK
        let gameList = [Game(imageName: "catan", title: "Catan", released: "1995"),
                        Game(imageName: "trajan", title: "Trajan", released: "2011"),
                        Game(imageName: "lisboa", title: "Lisboa", released: "2017"),
                        Game(imageName: "pandemic", title: "Pandemic", released: "2008"),
                        Game(imageName: "ticket_to_ride", title: "Ticket To Ride", released: "2004"),
                        Game(imageName: "azul", title: "Azul", released: "2017"),
                        Game(imageName: "cthulhu", title: "Cthulhu - Death May Die", released: "2019"),
                        Game(imageName: "carcassonne", title: "Carcassonne", released: "2000"),
                        Game(imageName: "pilares_da_terra", title: "Os Pilares da Terra", released: "2006"),
                        Game(imageName: "luna", title: "Luna", released: "2010"),
                        Game(imageName: "dixit", title: "Dixit", released: "2006"),
                        Game(imageName: "dobble", title: "Dobble", released: "2009")]
        
        output.setRemoteGameList(gameList)
    }
    
}
