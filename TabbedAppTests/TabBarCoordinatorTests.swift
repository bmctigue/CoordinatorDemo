//
//  TabBarCoordinatorTests.swift
//  TabbedAppTests
//
//  Created by Bruce McTigue on 10/1/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import XCTest
@testable import TabbedApp

class TabBarCoordinatorTests: XCTestCase {

    func testCoordinator() {
        let firstImageName = "first"
        let secondImageName = "second"
        let firstCoordinator = FirstCoordinator(with: firstImageName)
        let secondCoordinator = SecondCoordinator(with: secondImageName)
        let coordinators: [TabCoordinator] =  [firstCoordinator, secondCoordinator]
        let tabBarCoordinator = TabBarCoordinator(with: coordinators)
        tabBarCoordinator.run()
        let tabBarController = tabBarCoordinator.getTabBar()
        if let controllers = tabBarController.viewControllers {
            for (index,_) in controllers.enumerated() {
                tabBarController.selectedIndex = index
            }
        }
        XCTAssert(tabBarController.viewControllers!.count == coordinators.count)
        XCTAssert(tabBarController.tabBar.items!.count == coordinators.count)
    }
}
