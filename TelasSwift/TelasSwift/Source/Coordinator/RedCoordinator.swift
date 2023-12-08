//
//  RedCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class RedCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RedViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onGreenTap = {
            self.goToGreen()
        }
        
        viewController.onBlueTap = {
            self.goToBlue()
        }
        
    }
    
    func goToGreen() {
        self.navigationController.popViewController(animated: true)
    }
    
    func goToBlue() {
        self.navigationController.popToRootViewController(animated: true)
    }
}
