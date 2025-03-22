//
//  Card06VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 24/02/25.
//

import UIKit

class Card06VC: UIViewController, CardViewDelegate {
    func didTapNextButton() {
        let lastCard = LastCardVC()
        navigationController?.pushViewController(lastCard, animated: true)
    }    
    
    func gotoSettings() {
        let vc = SettingsCard06VC()
        present(vc, animated: true)
    }
    

    var screen: Card06Screen?
    
    override func loadView() {
        screen = Card06Screen()
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
