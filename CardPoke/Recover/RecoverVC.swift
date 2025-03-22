//
//  RecoverVC.swift
//  CardPoke
//
//  Created by Ronan Soares on 04/03/25.
//

import UIKit

class RecoverVC: UIViewController, sendButtonProtocol, UITextFieldDelegate {
    
    func sendButtonTapped() {
        let Es = EmailSendVC()
        present(Es, animated: true)    }
    

    var screen : RecoverScreen?
    
    override func loadView() {
        super.loadView()
        screen = RecoverScreen()
        view = screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self
        screen?.DelegateTextField(delegate: self)
        overrideUserInterfaceStyle = .light
        // Do any additional setup after loading the view.
    }
    
    
    
       func textFieldShouldReturn(_ textField: UITextField) -> Bool { //método habilita botao return do teclado
           textField.resignFirstResponder()
           return true
       }
       
       func textFieldDidEndEditing(_ textField: UITextField) { // ao terminar de digitar, verificar
           //screen?.delegateButtonFunc(delegate: self)
           // chama o método da Screen, que contenha a lógica de validacao dos campos alvos
           screen?.validaTextField()
       }
    
       
       func textFieldDidBeginEditing(_ textField: UITextField) { // ao iniciar para clicar
           if  screen?.recoverTextField.text?.isEmpty ?? true{
               screen?.recoverTextField.layer.borderColor = UIColor.clear.cgColor
               screen?.recoverTextField.layer.borderWidth = 0
               screen?.sendButton.isEnabled = false
             }
       }
    
}
