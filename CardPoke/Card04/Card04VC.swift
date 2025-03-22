//
//  Card04VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 16/02/25.
//

import UIKit

class Card04VC: UIViewController, CardViewDelegate {
    func gotoSettings() {
        let vc = SettingsCard04()
        present(vc, animated: true)
    }
    
  
    func didTapNextButton() {
        let card5 = Card05VC()
           navigationController?.pushViewController(card5, animated: true)    }
    

    var screen: Card04Screen?
    
    override func loadView() {
        screen = Card04Screen()
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
