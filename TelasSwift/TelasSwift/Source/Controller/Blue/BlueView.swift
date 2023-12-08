//
//  BlueView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class BlueView: UIView {
    
    var onGreenTap: (( ) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBlue
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var buttonGreen = ButtonDefault(text: "Tela verde")
    
    func setupVisualElements() {
        self.addSubview(buttonGreen)
        
        buttonGreen.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonGreen.widthAnchor.constraint(equalToConstant: 360),
            buttonGreen.heightAnchor.constraint(equalToConstant: 60),
            buttonGreen.topAnchor.constraint(equalTo: self.topAnchor, constant: 390),
            buttonGreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            buttonGreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
        ])
    }
    
    @objc
    private func greenTap() {
        onGreenTap?()
    }
}
