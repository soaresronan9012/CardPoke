//
//  Card03VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

class Card03VC: UIViewController, CardViewDelegate {
    func gotoSettings() {
        let vc = SettingsCard03()
        present(vc, animated: true)    }
    
   
    func didTapNextButton() {
        let card4 = Card04VC()
           navigationController?.pushViewController(card4, animated: true)    }
    

    var screen : Card03Screen?
    
    override func loadView() {
        screen = Card03Screen()
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
