//
//  Card01VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 14/02/25.
//

import UIKit

class Card01VC: UIViewController, testDelegate {
    
    func testDelegateMethod() {
        let vc = Card02VC()
        navigationController?.pushViewController(vc, animated: true)
        }
    

    var screen: Card01Screen!  // var do tipo da view alvo
    
    override func loadView() {
        screen = Card01Screen()   // instanciando view
        view = screen            // atribuindo view criada á view da Controller
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
