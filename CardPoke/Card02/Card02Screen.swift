//
//  Card02Screen.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

class Card02Screen: CardView {

    init() {
            super.init(
                title: "Charmander",
                frontImageName: "001",
                backImageName: "card_back",
                buttonTitle: "Next"
            ) {
                print("Botão Next pressionado!")
            }
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
