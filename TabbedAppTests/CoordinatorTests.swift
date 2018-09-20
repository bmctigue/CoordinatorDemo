//
//  CoordinatorTests.swift
//  TabbedAppTests
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import XCTest
@testable import TabbedApp

class CoordinatorTests: XCTestCase {
    
    class AppCoordinatorSpy: AppCoordinator {
        
        override func run() {
            let tabBarController = UITabBarController()
            let tabBarCoordinator = TabBarCoordinatorSpy(with: tabBarController)
            tabBarCoordinator.run()
        }
    }
    
    class TabBarCoordinatorSpy: TabBarCoordinator {
        
        var runMethodCalled = false
        
        override func run() {
            runMethodCalled = true
        }
    }
    
    func testAppCoordinator() {
        let coordinator = AppCoordinatorSpy(with: nil, tabBarController: nil)
        
        
    }
    
}
