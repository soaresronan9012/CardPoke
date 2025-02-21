//
//  SettingsCard04.swift
//  CardPoke
//
//  Created by Ronan Soares on 21/02/25.
//

import UIKit

class SettingsCard04: UIViewController, SettingsCardDelegate{

    func returnSettings() {
        dismiss(animated: true, completion: nil)
    }
    

    var screen : SettingsCard04Screen?
    
    override func loadView() {
        screen = SettingsCard04Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }

}
