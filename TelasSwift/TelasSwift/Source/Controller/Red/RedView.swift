//
//  RedView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class RedView: UIView {
    
    var onGreenTap: (( ) -> Void)?
    var onBlueTap: (( ) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemRed
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var buttonGreen = ButtonDefault(text: "Tela verde")
    var buttonBlue = ButtonDefault(text: "Tela azul")
    
    func setupVisualElements() {
        self.addSubview(buttonGreen)
        self.addSubview(buttonBlue)
        
        buttonGreen.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        buttonBlue.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonGreen.widthAnchor.constraint(equalToConstant: 360),
            buttonGreen.heightAnchor.constraint(equalToConstant: 60),
            buttonGreen.topAnchor.constraint(equalTo: self.topAnchor, constant: 305),
            buttonGreen.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            buttonGreen.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
        ])
        
        NSLayoutConstraint.activate([
            buttonBlue.widthAnchor.constraint(equalToConstant: 360),
            buttonBlue.heightAnchor.constraint(equalToConstant: 60),
            buttonBlue.topAnchor.constraint(equalTo: self.topAnchor, constant: 570),
            buttonBlue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            buttonBlue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
        ])
    }
    
    @objc
    private func greenTap() {
        onGreenTap?()
    }
    
    @objc
    private func blueTap() {
        onBlueTap?()
    }
}

