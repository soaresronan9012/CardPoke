//
//  CreateVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 19/03/25.
//

import UIKit

class CreateVC: UIViewController, UITextFieldDelegate {

    var screen:CreateScreen?
    
    override func loadView() {
        screen = CreateScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        screen?.configDelegateTextField(delegate: self)
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //método habilita botao return do teclado
            textField.resignFirstResponder() // padrao do metodo
            return true
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) { // fazer as validações sempre aqui
            //screen?.delegateButtonFunc(delegate: self)
            screen?.callValidaTextField() // funcao que consta a validacao
        }
        
        func  habilitField () {  // funcao que desabilita advertencia de campo incompleto / #chamada no didbeginediting#
            if screen?.nameTextFieldCreate.text?.isEmpty == true{
                //screen?.textName.layer.borderColor = UIColor.red.cgColor
                screen?.nameTextFieldCreate.layer.borderWidth = 0
            }
            if screen?.passwordTextFieldCreate.text?.isEmpty == true {
                //screen?.textPassword.layer.borderColor = UIColor.red.cgColor
                screen?.passwordTextFieldCreate.layer.borderWidth = 0        }
        }
        
        
        func textFieldDidBeginEditing(_ textField: UITextField) { // quando inicia a digitacao
            screen?.configDelegateTextField(delegate: self)
            habilitField() // invoca a funcao que limpa advertecia
        }
}
