//
//  SecondCoordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 9/20/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

final class SecondCoordinator: TabCoordinator {
    
    private var imageName: String
    
    init(with imageName: String) {
        self.imageName = imageName
    }
    
    func getImageName() -> String {
        return imageName
    }
    
    func run(completionHandler: CoordinatorBlock) {
        let storyboard = StoryboardFactory().create(name: "Second")
        if let controller = storyboard.instantiateInitialViewController() as? SecondViewController {
            completionHandler(controller)
        }
    }
}
