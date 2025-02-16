//
//  Card03Screen.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

class Card03Screen: CardView {
    
    init() {
        super.init(
            title: "Squirtle",
            titleColor: .blue.withAlphaComponent(0.6),
            frontImageName: "007",
            backImageName: "Screenshot 2025-02-15 at 22.17.39",
            buttonTitle: "Next"
        ) {
            print("Botão Next pressionado!")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
