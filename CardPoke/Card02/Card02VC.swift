//
//  Card02VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

class Card02VC: UIViewController {

    var screen : Card02Screen?
    
    override func loadView() {
        super.loadView()
        screen = Card02Screen()
        view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
