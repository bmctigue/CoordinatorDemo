//
//  TabBarCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

final class TabBarCoordinator: BaseCoordinator {
    
    private let tabBarController = UITabBarController()
    private let coordinators: [TabCoordinator]
    private var controllers: [UIViewController] = []
    
    init(with coordinators: [TabCoordinator]) {
        self.coordinators = coordinators
    }
    
    func run() {
        for coordinator in coordinators {
            addController(coordinator: coordinator)
        }
        
        tabBarController.setViewControllers(controllers, animated: false)
        
        for (index, coordinator) in coordinators.enumerated() {
            updateTabImage(tab: index, imageName: coordinator.getImageName())
        }
    }
    
    private func addController(coordinator: TabCoordinator) {
        coordinator.run(completionHandler: { controller in
            controllers.append(controller)
        })
    }
    
    private func updateTabImage(tab: Int, imageName: String) {
        self.tabBarController.tabBar.items?[tab].image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        self.tabBarController.tabBar.items?[tab].selectedImage = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
    }
}

extension TabBarCoordinator {
    func getTabBar() -> UITabBarController {
        return tabBarController
    }
}
