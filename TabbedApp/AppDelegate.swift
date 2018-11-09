//
//  AppDelegate.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/6/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var coordinators: [TabCoordinator] = [FirstCoordinator(with: "first"), SecondCoordinator(with: "second")]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let appCoordinator = AppCoordinator(with: window, tabBarController: UITabBarController(), coordinators: coordinators)
        appCoordinator.run()
        
        return true
    }
}
