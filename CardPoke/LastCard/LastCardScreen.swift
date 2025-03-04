//
//  LastCardScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 01/03/25.
//

import UIKit

class LastCardScreen: CardView {

    init() {
        super.init(
            title: "Scorbunny",
            titleColor: .white.withAlphaComponent(0.7),
            frontImageName: "813",
            backImageName: "Screenshot 2025-03-03 at 20.58.36",
            buttonTitle: "Next"
        ) {
            print("Botão Next pressionado!")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
