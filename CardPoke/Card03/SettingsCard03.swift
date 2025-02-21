//
//  SettingsCard03.swift
//  CardPoke
//
//  Created by Ronan Soares on 21/02/25.
//

import UIKit

class SettingsCard03: UIViewController, SettingsCardDelegate{

    func returnSettings() {
        dismiss(animated: true, completion: nil)
    }
    

    var screen : SettingsCard03Screen?
    
    override func loadView() {
        screen = SettingsCard03Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }
}
