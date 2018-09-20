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
    private var tabBarController: UITabBarController?
    
    init(with window: UIWindow?, tabBarController: UITabBarController?) {
        self.window = window
        self.tabBarController = tabBarController
    }
    
    func run() {
        if let tabBarController = tabBarController {
            let tabBarCoordinator = TabBarCoordinator(with: tabBarController)
            tabBarCoordinator.run()
            self.window?.rootViewController = tabBarController
            self.window?.makeKeyAndVisible()
        }
    }
}
