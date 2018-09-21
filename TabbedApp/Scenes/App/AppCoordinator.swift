//
//  AppCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

typealias TabCoordinatorBlock = ((UIViewController) -> Void)

protocol TabCoordinator: class {
    var imageName: String { get set }
    func run(completionHandler: TabCoordinatorBlock)
}

class AppCoordinator {
    
    private var window: UIWindow?
    private var tabBarController: UITabBarController?
    private var coordinators: [TabCoordinator] = [FirstCoordinator(), SecondCoordinator()]
    
    init(with window: UIWindow?, tabBarController: UITabBarController?) {
        self.window = window
        self.tabBarController = tabBarController
    }
    
    func run() {
        if let tabBarController = tabBarController {
            let tabBarCoordinator = TabBarCoordinator(with: tabBarController, coordinators: coordinators)
            tabBarCoordinator.run()
            self.window?.rootViewController = tabBarController
            self.window?.makeKeyAndVisible()
        }
    }
}
