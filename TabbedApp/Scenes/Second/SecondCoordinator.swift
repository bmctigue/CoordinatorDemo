//
//  SecondCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

class SecondCoordinator: TabCoordinator {
    
    func run(completionHandler: CoordinatorBlock) {
        let storyboard = StoryboardFactory().create(name: "Second")
        if let controller = storyboard.instantiateInitialViewController() as? SecondViewController {
            completionHandler(controller)
        }
    }
}