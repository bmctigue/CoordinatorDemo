//
//  AppCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

protocol BaseCoordinator: class {
    func run()
}

final class AppCoordinator: BaseCoordinator {
    
    private var window: UIWindow?
    private lazy var tabBarController: UITabBarController = UITabBarController()
    private lazy var coordinators: [TabCoordinator] = [FirstCoordinator(with: "first"), SecondCoordinator(with: "second")]
    
    init(with window: UIWindow?) {
        self.window = window
    }
    
    func run() {
        let tabBarCoordinator = TabBarCoordinator(with: tabBarController, coordinators: coordinators)
        tabBarCoordinator.run()
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
    }
}

extension AppCoordinator {
    func getTabBar() -> UITabBarController {
        return tabBarController
    }
    
    func getCoordinators() -> [TabCoordinator] {
        return coordinators
    }
}
