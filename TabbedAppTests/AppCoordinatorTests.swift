//
//  AppCoordinatorTests.swift
//  TabbedAppTests
//
//  Created by Bruce McTigue on 10/1/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import XCTest
@testable import TabbedApp

class AppCoordinatorTests: XCTestCase {

    func testAppCoordinator() {
        let tabBarController = UITabBarController()
        let coordinators: [TabCoordinator] = [FirstCoordinator(with: "first"), SecondCoordinator(with: "second")]
        let coordinator = AppCoordinator(with: nil, tabBarController: tabBarController, coordinators: coordinators)
        coordinator.run()
        XCTAssert(tabBarController.viewControllers!.count == coordinators.count)
        
    }
}
