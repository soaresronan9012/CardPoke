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
                titleColor: .white.withAlphaComponent(0.6),
                frontImageName: "004",
                backImageName: "Screenshot 2025-02-16 at 14.50.27",
                buttonTitle: "Next"
            ) {
                print("Botão Next pressionado!")
            }
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
