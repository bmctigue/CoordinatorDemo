//
//  SecondTests.swift
//  TabbedAppTests
//
//  Created by Bruce McTigue on 10/1/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import XCTest
@testable import TabbedApp

class SecondTests: XCTestCase {
    
    var secondController: SecondViewController?
    
    func testCoordinator() {
        let imageName = "second"
        
        let coordinator = SecondCoordinator(with: imageName)
        
        let expectation = self.expectation(description: "testCoordinator")
        
        coordinator.run(completionHandler: { controller in
            self.secondController = controller as? SecondViewController
            expectation.fulfill()
        })
        
        waitForExpectations(timeout: 3.0, handler: nil)
        XCTAssertNotNil(secondController)
        XCTAssert(coordinator.getImageName() == imageName)
    }
}
