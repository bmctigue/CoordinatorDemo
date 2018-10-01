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
    private var tabBarController: UITabBarController?
    private var coordinators: [TabCoordinator]?
    
    init(with window: UIWindow?, tabBarController: UITabBarController?, coordinators: [TabCoordinator]) {
        self.window = window
        self.tabBarController = tabBarController
        self.coordinators = coordinators
    }
    
    func run() {
        if let tabBarController = tabBarController, let coordinators = coordinators {
            let tabBarCoordinator = TabBarCoordinator(with: tabBarController, coordinators: coordinators)
            tabBarCoordinator.run()
            self.window?.rootViewController = tabBarController
            self.window?.makeKeyAndVisible()
        }
    }
}
