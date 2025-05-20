//
//  Card04Screen.swift
//  CardPoke
//
//  Created by Ronan Soares on 16/02/25.
//

import UIKit

class Card04Screen: CardView {

    init() {
        super.init(
            title: "Cartepie",
            titleColor: .white.withAlphaComponent(0.6),
            frontImageName: "010",
            backImageName: "Screenshot 2025-02-16 at 15.00.10",
            buttonTitle: "Next"
        ) {
            print("Botão Next pressionado!")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
