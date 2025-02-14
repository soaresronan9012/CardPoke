//
//  ViewControllerVCViewController.swift
//  CardPoke
//
//  Created by Ronan Soares on 13/02/25.
//

import UIKit

class ViewControllerVCViewController: UIViewController {

    var viewscreen : ViewScreen?
    
    override func loadView() {
        super.loadView()
        viewscreen = ViewScreen()
        view = viewscreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
