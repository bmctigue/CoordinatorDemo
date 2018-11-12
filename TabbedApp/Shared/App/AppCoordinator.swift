//
//  AppCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator {
    
    private var window: UIWindow?
    private (set) var tabBarCoordinator: TabBarCoordinator!
    private lazy var coordinators: [TabCoordinator] = [FirstCoordinator(with: "first"), SecondCoordinator(with: "second")]
    
    init(with window: UIWindow?) {
        self.window = window
        self.tabBarCoordinator = TabBarCoordinator(with: coordinators)
    }
    
    func run() {
        tabBarCoordinator.run()
        self.window?.rootViewController = tabBarCoordinator.getTabBar()
        self.window?.makeKeyAndVisible()
    }
}
