//
//  SettingsCard05.swift
//  CardPoke
//
//  Created by Ronan Soares on 22/02/25.
//

import UIKit

class SettingsCard05: UIViewController, SettingsCardDelegate {

    func returnSettings() {
        dismiss(animated: true, completion: nil)
    }
    

    var screen : SettingsCard05Screen?
    
    override func loadView() {
        screen = SettingsCard05Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }

}
