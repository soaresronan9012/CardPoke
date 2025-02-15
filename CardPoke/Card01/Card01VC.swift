//
//  Card01VC.swift
//  CardPoke
//
//  Created by Ronan Soares on 14/02/25.
//

import UIKit

class Card01VC: UIViewController {

    var screen: Card01Screen!  // var do tipo da view alvo
    
    override func loadView() {
        screen = Card01Screen()   // instanciando view
        view = screen            // atribuindo view criada á view da Controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
