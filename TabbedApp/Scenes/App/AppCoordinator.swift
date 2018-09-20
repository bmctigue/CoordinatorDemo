//
//  AppCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

typealias CoordinatorBlock = ((UIViewController) -> Void)

protocol TabCoordinator: class {
    func run(completionHandler: CoordinatorBlock)
}

class AppCoordinator {
    
    private var window: UIWindow?
    
    init(with window: UIWindow?) {
        self.window = window
    }
    
    func run() {
        let storyboard = StoryboardFactory().create(name: "App")
        if let tabBarController = storyboard.instantiateInitialViewController() as? UITabBarController {
            let tabBarCoordinator = TabBarCoordinator(with: tabBarController)
            tabBarCoordinator.run()
            self.window?.rootViewController = tabBarController
            self.window?.makeKeyAndVisible()
        }
    }
}
