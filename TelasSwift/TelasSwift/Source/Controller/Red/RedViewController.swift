//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class RedViewController: UIViewController {
    
    var onGreenTap: (( ) -> Void)?
    var onBlueTap: (( ) -> Void)?
    
    lazy var redView: RedView = {
        let redView = RedView()
        
        redView.onGreenTap = {
            self.onGreenTap?()
        }
        
        redView.onBlueTap = {
            self.onBlueTap?()
        }
        
        return redView
    }()
    
    override func loadView() {
        self.view = redView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
