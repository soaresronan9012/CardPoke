//
//  Card03VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

class Card03VC: UIViewController, CardViewDelegate {
    func didTapNextButton() {
        let card4 = Card04VC()
           navigationController?.pushViewController(card4, animated: true)    }
    

    var screen : Card03Screen?
    
    override func loadView() {
        screen = Card03Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self

        // Do any additional setup after loading the view.
    }
    

    

}
