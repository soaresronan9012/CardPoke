//
//  ViewControllerVCViewController.swift
//  CardPoke
//
//  Created by Ronan Soares on 13/02/25.
//

import UIKit

class ViewControllerVCViewController: UIViewController, buttonEnter { // assinou o protocolo
    
    func buttonEnterPressed() { // metodo do protocolo
        let secondVC = LoginVC()
            navigationController?.pushViewController(secondVC, animated: true)
    }
    

    var viewscreen : ViewScreen?
    
    override func loadView() {
        super.loadView()
        viewscreen = ViewScreen()
        view = viewscreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewscreen?.delegate = self // habilita a chamada do protocol
        overrideUserInterfaceStyle = .light

        
    }
    

    

}
