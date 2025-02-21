//
//  SettingsCard02.swift
//  CardPoke
//
//  Created by Ronan Soares on 20/02/25.
//

import UIKit

class SettingsCard02: UIViewController,SettingsCardDelegate{
    
    func returnSettings() {
        dismiss(animated: true, completion: nil)
    }
    

    var screen : SettingsCard02Screen?
    
    override func loadView() {
        screen = SettingsCard02Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }
    

    

}
