//
//  Card06Screen.swift
//  CardPoke
//
//  Created by Ronan Soares on 24/02/25.
//

import UIKit

class Card06Screen: CardView {

    init() {
        super.init(
            title: "Pikachu",
            titleColor: .white.withAlphaComponent(0.6),
            frontImageName: "025",
            backImageName: "Screenshot 2025-02-24 at 21.34.55",
            buttonTitle: "Next"
        ) {
            print("Botão Next pressionado!")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
