//
//  LastCardVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 01/03/25.
//

import UIKit

class LastCardVC: UIViewController, CardViewDelegate {

    func didTapNextButton() {
    
    }
    
    func gotoSettings() {
        let vc = LastSettingsVC()
        present(vc, animated: true)    }
    

    var screen: LastCardScreen?
    
    override func loadView() {
        screen = LastCardScreen()
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
