//
//  LastSettingsVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 03/03/25.
//

import UIKit

class LastSettingsVC: UIViewController, SettingsCardDelegate {

    func returnSettings() {
        //dismiss(animated: true, completion: nil)
    }
    

    var screen : LastSettingsScreen?
    
    override func loadView() {
        screen = LastSettingsScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        
    }

}
