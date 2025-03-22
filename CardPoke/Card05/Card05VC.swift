//
//  Card05VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 22/02/25.
//

import UIKit

class Card05VC: UIViewController, CardViewDelegate {

    func gotoSettings() {
        let vc = SettingsCard05()
        present(vc, animated: true)
    }
    
  
    func didTapNextButton() {
        let card6 = Card06VC()
          navigationController?.pushViewController(card6, animated: true)
    }
    

    var screen: Card05Screen?
    
    override func loadView() {
        screen = Card05Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self
        overrideUserInterfaceStyle = .light
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {  // viewWillAppear é chamado toda vez que a tela aparece novamente,
        super.viewDidDisappear(animated)
        screen?.resetImageToFront() // 🔹 Método para resetar a imagem
    }

}
