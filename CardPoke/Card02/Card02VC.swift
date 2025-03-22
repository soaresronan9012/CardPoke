//
//  Card02VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

class Card02VC: UIViewController, CardViewDelegate {
    func gotoSettings() {
        let vc = SettingsCard02()
        present(vc, animated: true)
    }
    
    
    
    func didTapNextButton() {  // metodo do protocol
        let card3 = Card03VC()
           navigationController?.pushViewController(card3, animated: true)
        }
    

    var screen : Card02Screen?
    
    override func loadView() {
        super.loadView()
        screen = Card02Screen()
        view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self // atribui a variavel do tipo do protocol a esta view
        overrideUserInterfaceStyle = .light
        // Do any additional setup after loading the view.
    }
    

    override func viewDidDisappear(_ animated: Bool) {  // viewWillAppear é chamado toda vez que a tela aparece novamente,
        super.viewDidDisappear(animated)
        screen?.resetImageToFront() // 🔹 Método para resetar a imagem
    }

}
