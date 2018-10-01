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
        
        let storyboard = StoryboardFactory().create(name: "App")
        let tabBarController = storyboard.instantiateInitialViewController() as? UITabBarController
        let appCoordinator = AppCoordinator(with: window, tabBarController: tabBarController, coordinators: coordinators)
        appCoordinator.run()
        
        return true
    }
}
