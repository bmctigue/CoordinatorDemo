//
//  Coordinator.swift
//  TabbedApp
//
//  Created by Bruce McTigue on 11/12/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation
import UIKit

typealias CoordinatorBlock = ((UIViewController) -> Void)

protocol BaseCoordinator: class {
    func run()
}

protocol Coordinator: class {
    func run(completionHandler: CoordinatorBlock)
}

protocol TabCoordinator: class {
    func getImageName() -> String
    func run(completionHandler: CoordinatorBlock)
}
