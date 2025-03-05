//
//  LoginVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 25/02/25.
//

import UIKit

class LoginVC: UIViewController, LoginButtonprotocol, UITextFieldDelegate {
    
    func recoverButtonTapped() {
        let recover = RecoverVC()
        present(recover, animated: true)
    }
    
    
    func loginButtonTapped() {
        let card01 = Card01VC()
            navigationController?.pushViewController(card01, animated: true)
    
    }
    

    var screen : LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self
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
        
        func  habilitField () {  // funcao que desabilita advertencia de campo incompleto
            if screen?.nameTextField.text?.isEmpty == true{
                //screen?.textName.layer.borderColor = UIColor.red.cgColor
                screen?.nameTextField.layer.borderWidth = 0
            }
            if screen?.passwordTextField.text?.isEmpty == true {
                //screen?.textPassword.layer.borderColor = UIColor.red.cgColor
                screen?.passwordTextField.layer.borderWidth = 0        }
        }
        
        
        func textFieldDidBeginEditing(_ textField: UITextField) { // quando inicia a digitacao
            screen?.configDelegateTextField(delegate: self)
            habilitField() // invoca a funcao que limpa advertecia
        }


}
