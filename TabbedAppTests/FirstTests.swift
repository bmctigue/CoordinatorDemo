//
//  FirstTests.swift
//  TabbedAppTests
//
//  Created by Bruce McTigue on 10/1/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import XCTest
@testable import TabbedApp

class FirstTests: XCTestCase {
    
    var firstController: FirstViewController?

    func testCoordinator() {
        let imageName = "first"
        let coordinator = FirstCoordinator(with: imageName)
        let expectation = self.expectation(description: "testCoordinator")
        
        coordinator.run(completionHandler: { controller in
            self.firstController = controller as? FirstViewController
            expectation.fulfill()
        })
        
        waitForExpectations(timeout: 3.0, handler: nil)
        XCTAssertNotNil(firstController)
        XCTAssert(coordinator.getImageName() == imageName)
    }
}
