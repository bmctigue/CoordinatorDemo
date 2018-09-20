//
//  FirstCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

class FirstCoordinator: TabCoordinator {
    
    func run(completionHandler: CoordinatorBlock) {
        let storyboard = StoryboardFactory().create(name: "First")
        if let controller = storyboard.instantiateInitialViewController() as? FirstViewController {
            completionHandler(controller)
        }
    }
}
