//
//  Storyboarded.swift
//  Games
//
//  Created by Andre M. Della Torre on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import UIKit

protocol Storyboarded {
    
    static var storyboardName: String { get }
    static var storyboard: UIStoryboard { get }
    
}

extension Storyboarded {
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }
    
}
