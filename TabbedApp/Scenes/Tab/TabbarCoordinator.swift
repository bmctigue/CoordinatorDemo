//
//  TabbarCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

class TabBarCoordinator {
    
    private let tabBarController: UITabBarController?
    private var controllers: [UIViewController] = []
    
    init(with tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    func run() {
        addController(coordinator: FirstCoordinator())
        addController(coordinator: SecondCoordinator())
        tabBarController?.setViewControllers(controllers, animated: false)
        updateTabImages()
    }
    
    private func addController(coordinator: TabCoordinator) {
        coordinator.run(completionHandler: { controller in
            controllers.append(controller)
        })
    }
    
    private func updateTabImages() {
        updateTabImage(tab: 0, imageName: "first")
        updateTabImage(tab: 1, imageName: "second")
    }
    
    private func updateTabImage(tab: Int, imageName: String) {
        self.tabBarController?.tabBar.items?[tab].image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        self.tabBarController?.tabBar.items?[tab].selectedImage = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
    }
}
