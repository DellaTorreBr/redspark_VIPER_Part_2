//
//  UIStoryboard+Instantiate.swift
//  Games
//
//  Created by Andre M. Della Torre on 05/04/20.
//  Copyright © 2020 redspark. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    convenience init(name: String) {
        self.init(name: name, bundle: nil)
    }
    
    func instantiateViewController<T: UIViewController>() -> T {
        let identifier = String(describing: T.self)
        guard let viewController: T = instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Failed to instantiate ViewController with identifier '\(identifier)'")
        }
        return viewController
    }
}
