//
//  Card04VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 16/02/25.
//

import UIKit

class Card04VC: UIViewController, CardViewDelegate {
    func didTapNextButton() {
    
    }
    

    var screen: Card04Screen?
    
    override func loadView() {
        screen = Card04Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {  // viewWillAppear é chamado toda vez que a tela aparece novamente,
        super.viewDidDisappear(animated)
        screen?.resetImageToFront() // 🔹 Método para resetar a imagem
    }

}
