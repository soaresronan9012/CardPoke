//
//  CreateVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 19/03/25.
//

import UIKit

class CreateVC: UIViewController {

    var screen:CreateScreen?
    
    override func loadView() {
        screen = CreateScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
}
