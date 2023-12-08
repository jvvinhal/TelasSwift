//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class GreenViewController: UIViewController {
    
    var onRedTap: (( ) -> Void)?
    var onBlueTap: (( ) -> Void)?
    
    lazy var greenView: GreenView = {
        let greenView = GreenView()
        
        greenView.onRedTap = {
            self.onRedTap?()
        }
        
        greenView.onBlueTap = {
            self.onBlueTap?()
        }
        
        return greenView
    }()
    
    override func loadView() {
        self.view = greenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}

