//
//  Coordinator.swift
//  Relax.io
//
//  Created by Decagon on 12/10/2021.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set}
    var navigationController: UINavigationController { get set }
    
    func start()
}

