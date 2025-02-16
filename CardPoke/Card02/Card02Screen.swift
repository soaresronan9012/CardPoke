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
                titleColor: .red.withAlphaComponent(0.6),
                frontImageName: "004",
                backImageName: "Screenshot 2025-02-15 at 21.26.10",
                buttonTitle: "Next"
            ) {
                print("Botão Next pressionado!")
            }
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
