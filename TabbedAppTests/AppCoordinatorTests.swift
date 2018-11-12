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
        let window = UIWindow(frame: UIScreen.main.bounds)
        let coordinator = AppCoordinator(with: window)
        coordinator.run()
        let tabBar = coordinator.getTabBar()
        let coordinators = coordinator.getCoordinators()
        XCTAssert(tabBar.viewControllers!.count == coordinators.count)
    }
}
