//
//  GreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class GreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = GreenViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onRedTap = {
            self.goToRed()
        }
        
        viewController.onBlueTap = {
            self.goToBlue()
        }
        
    }
    
    func goToRed() {
        let coordinator = RedCoordinator(navigationController: navigationController)
        
        coordinator.start()
    }
    
    func goToBlue() {
        self.navigationController.popViewController(animated: true)
    }
}
