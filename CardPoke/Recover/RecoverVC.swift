//
//  RecoverVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 04/03/25.
//

import UIKit

class RecoverVC: UIViewController {

    var screen : RecoverScreen?
    
    override func loadView() {
        super.loadView()
        screen = RecoverScreen()
        view = screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}
