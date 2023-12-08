//
//  BlueCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class BlueCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = BlueViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onGreenTap = {
            self.goToGreen()
        }
        
    }
    
    func goToGreen() {
        let coordinator = GreenCoordinator(navigationController: navigationController)
        
        coordinator.start()
    }
}

