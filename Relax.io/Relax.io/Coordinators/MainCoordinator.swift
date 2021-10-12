//
//  MainCoordinator.swift
//  Relax.io
//
//  Created by Decagon on 12/10/2021.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        showVC()
    }
    
    func showVC() {
        
        let viewController = ViewController.instantiate()
        
        viewController.showOrangeVC = { [weak self] in
            self?.showSecondVC()
        }
        
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    private func showSecondVC() {
        let secondVC = SecondViewController.instantiate()
        navigationController.pushViewController(secondVC, animated: true)
    }
    
}
