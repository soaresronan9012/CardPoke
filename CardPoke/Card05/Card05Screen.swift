//
//  Card05Screen.swift
//  CardPoke
//
//  Created by Ronan Soares on 22/02/25.
//

import UIKit

class Card05Screen: CardView {

    init() {
        super.init(
            title: "Eevee",
            titleColor: .brown.withAlphaComponent(0.7),
            frontImageName: "133",
            backImageName: "Screenshot 2025-02-22 at 10.15.49",
            buttonTitle: "Next"
        ) {
            print("Botão Next pressionado!")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
