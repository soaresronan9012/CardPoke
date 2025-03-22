//
//  EmailSendVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 09/03/25.
//

import UIKit

class EmailSendVC: UIViewController {

    var screen : EmailSendScreen?
    
    override func loadView() {
        super.loadView()
        screen = EmailSendScreen()
        view = screen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        // Do any additional setup after loading the view.
    }
    

   

}
