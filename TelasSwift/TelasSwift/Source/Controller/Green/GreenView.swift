//
//  GreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-15 on 08/12/23.
//

import Foundation
import UIKit

class GreenView: UIView {
    
    var onRedTap: (( ) -> Void)?
    var onBlueTap: (( ) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGreen
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var buttonRed = ButtonDefault(text: "Tela vermelha")
    var buttonBlue = ButtonDefault(text: "Tela azul")
    
    func setupVisualElements() {
        self.addSubview(buttonRed)
        self.addSubview(buttonBlue)
        
        buttonRed.addTarget(self, action: #selector(redTap), for: .touchUpInside)
        buttonBlue.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonRed.widthAnchor.constraint(equalToConstant: 360),
            buttonRed.heightAnchor.constraint(equalToConstant: 60),
            buttonRed.topAnchor.constraint(equalTo: self.topAnchor, constant: 305),
            buttonRed.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            buttonRed.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
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
    private func redTap() {
        onRedTap?()
    }
    
    @objc
    private func blueTap() {
        onBlueTap?()
    }
}
