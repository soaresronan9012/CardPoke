//
//  SettingsCard06VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 24/02/25.
//

import UIKit

class SettingsCard06VC: UIViewController, SettingsCardDelegate {

    func returnSettings() {
        //dismiss(animated: true, completion: nil)
    }
    

    var screen : SettingsCard06Screen?
    
    override func loadView() {
        screen = SettingsCard06Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }

}
