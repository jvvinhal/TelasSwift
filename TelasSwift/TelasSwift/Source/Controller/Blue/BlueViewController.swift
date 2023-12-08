//
//  BlueViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class BlueViewController: UIViewController {
    
    var onGreenTap: (( ) -> Void)?
    
    lazy var blueView: BlueView = {
        let blueView = BlueView()
        
        blueView.onGreenTap = {
            self.onGreenTap?()
        }
        
        return blueView
    }()
    
    override func loadView() {
        self.view = blueView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
