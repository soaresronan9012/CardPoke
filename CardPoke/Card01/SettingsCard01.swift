//
//  SettingsCard01.swift
//  CardPoke
//
//  Created by Ronan Soares on 21/02/25.
//

import UIKit

class SettingsCard01: UIViewController, SettingsCardDelegate {

    func returnSettings() {
        dismiss(animated: true, completion: nil)
    }
    

    var screen : SettingsCard01Screen?
    
    override func loadView() {
        screen = SettingsCard01Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }

}
