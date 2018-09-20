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
    
    private func addController(coordinator: Coordinator) {
        coordinator.run(completionHandler: { controller in
            controllers.append(controller)
        })
    }
    
    private func updateTabImages() {
        self.tabBarController?.tabBar.items?[0].image = UIImage(named: "first")?.withRenderingMode(.alwaysOriginal)
        self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "first")?.withRenderingMode(.alwaysOriginal)
        
        self.tabBarController?.tabBar.items?[1].image = UIImage(named: "second")?.withRenderingMode(.alwaysOriginal)
        self.tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "second")?.withRenderingMode(.alwaysOriginal)
    }
}
