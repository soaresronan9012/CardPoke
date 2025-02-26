//
//  LoginVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 25/02/25.
//

import UIKit

class LoginVC: UIViewController {

    var screen : LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
