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

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let appCoordinator = AppCoordinator(with: window)
        appCoordinator.run()
        
        return true
    }
}
