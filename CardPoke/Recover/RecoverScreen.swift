//
//  RecoverScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 04/03/25.
//

import UIKit

protocol sendButtonProtocol : AnyObject {
    func sendButtonTapped()
}

class RecoverScreen: UIView {
    
    weak var delegate : sendButtonProtocol?
    
    lazy var BackGround:UIImageView = {
        let bg = UIImageView(image: UIImage(named: "HD Wallpaper 74"))
        bg.translatesAutoresizingMaskIntoConstraints = false
        return bg
    }()
    
    
    lazy var recoverTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray3])
        tf.textColor = .white
        tf.backgroundColor = .clear
        tf.keyboardType = .emailAddress
        tf.layer.borderWidth = 0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    public func DelegateTextField(delegate: UITextFieldDelegate){  // func assinatura do protocol
        recoverTextField.delegate = delegate   // elementos a serem validados dentro desse protocol
          
      }
    
    public func validaTextField (){ // metodo de validacao
        let email: String = recoverTextField.text ?? " "  // se o conteudo do text desse campo for nil
        
        if !email.isEmpty  {
            sendButton.isEnabled = true
        }
        else {
            sendButton.isEnabled = false
            recoverTextField.layer.borderColor = UIColor.yellow.cgColor
            recoverTextField.layer.borderWidth = 1
        }
    }
        
        
    lazy var linerecoverView : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .systemGray3
            return line
            }()
    
    
    lazy var sendButton : UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.isEnabled = false
            button.setTitle("Send", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .systemGray3
            //button.backgroundColor = .black.withAlphaComponent(0.5);
            button.layer.cornerRadius = 10
            //button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.systemGray.cgColor
            button.addTarget(self, action: #selector(buttonTappet), for: .touchUpInside)
            return button
        }()
        @objc func buttonTappet( _ sender: UIButton){
            print("clicou")
            delegate?.sendButtonTapped()
            
        }
    
    
    // funcao que baixa o teclado ao tocar na tela
       private func setupDismissKeyboardGesture() {
               let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
               tapGesture.cancelsTouchesInView = false // Permite que outros gestos ainda sejam processados
           self.addGestureRecognizer(tapGesture)
           }
    @objc private func dismissKeyboard() {
        self.endEditing(true) // Fecha o teclado
        
        if  recoverTextField.text?.isEmpty ?? true{
            recoverTextField.layer.borderColor = UIColor.yellow.cgColor
            recoverTextField.layer.borderWidth = 1
          }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        addConstraints()
        setupDismissKeyboardGesture() // ao clicar na tela
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(BackGround)
        addSubview(recoverTextField)
        addSubview(linerecoverView)
        addSubview(sendButton)
        
    }
    
    func addConstraints(){
        NSLayoutConstraint.activate([
            BackGround.topAnchor.constraint(equalTo: topAnchor),
            BackGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            BackGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            BackGround.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            recoverTextField.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 220),
            recoverTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            recoverTextField.widthAnchor.constraint(equalToConstant: 340),
            
            linerecoverView.topAnchor.constraint(equalTo: recoverTextField.bottomAnchor, constant: 10),
            linerecoverView.widthAnchor.constraint(equalToConstant: 340),
            linerecoverView.heightAnchor.constraint(equalToConstant: 1),
            linerecoverView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            sendButton.topAnchor.constraint(equalTo: linerecoverView.bottomAnchor, constant: 50),
            sendButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            sendButton.widthAnchor.constraint(equalToConstant: 100),
            sendButton.heightAnchor.constraint(equalToConstant: 32),

        ])
    }
}
