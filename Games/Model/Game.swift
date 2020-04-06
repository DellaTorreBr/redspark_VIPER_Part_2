//
//  Game.swift
//  Games
//
//  Created by Andre M. Della Torre on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation

final class Game: NSObject {
    
    private enum Constants {
        static let imageNameKey = "imageName"
        static let titleKey = "title"
        static let releasedKey = "released"
    }
    
    let imageName: String
    let title: String
    let released: String
    
    init(imageName: String, title: String, released: String) {
        self.imageName = imageName
        self.title = title
        self.released = released
    }
    
}

extension Game: NSCoding {
    
    func encode(with coder: NSCoder) {
        coder.encode(imageName, forKey: Constants.imageNameKey)
        coder.encode(title, forKey: Constants.titleKey)
        coder.encode(released, forKey: Constants.releasedKey)
    }
    
    convenience init?(coder: NSCoder) {
        let imageName = coder.decodeObject(forKey: Constants.imageNameKey) as? String ?? String()
        let title = coder.decodeObject(forKey: Constants.titleKey) as? String ?? String()
        let released = coder.decodeObject(forKey: Constants.releasedKey) as? String ?? String()
        self.init(imageName: imageName, title: title, released: released)
    }
    
}
