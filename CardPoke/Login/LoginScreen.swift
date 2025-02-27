//
//  LoginScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 25/02/25.
//

import UIKit

class LoginScreen: UIView {

    lazy var backgroundImage: UIImageView = {
        let bg = UIImageView(image: UIImage(named: "Pokémon"))
        bg.contentMode = .scaleAspectFill
        bg.translatesAutoresizingMaskIntoConstraints = false
        return bg
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        tf.textColor = .white
        tf.backgroundColor = .clear
        tf.layer.borderWidth = 0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var lineNameView : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .systemGray
            return line
            }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        tf.textColor = .white
        tf.backgroundColor = .clear
        tf.backgroundColor = .clear
        tf.layer.borderWidth = 0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var linePasswordView : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .systemGray
            return line
            }()
    
    lazy var recoverButton : UIButton = {  // botao onde aparece somente o seu texto
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("recover / create account", for: .normal)
            button.setTitleColor(.systemGray6, for: .normal)
            button.backgroundColor = .clear  //remove visual do botao
            button.layer.borderWidth = 0     // remove bordas
            button.addTarget(self, action: #selector(recoverButtonTappet), for: .touchUpInside)
            return button
        }()
        @objc func recoverButtonTappet(){ // acao do botao ao ser clicado
            print("clicou recuperar senha ")
            }
    
    
    lazy var loginButton : UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.isEnabled = false
            button.setTitle("Login", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .systemGray5
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.systemGray.cgColor
            button.addTarget(self, action: #selector(buttonTappet), for: .touchUpInside)
            return button
        }()
        @objc func buttonTappet( _ sender: UIButton){
            print("clicou")
              // var do tipo do protocol / metodo protocol
        }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        addelements()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addelements(){
        addSubview(backgroundImage)
        addSubview(nameTextField)
        addSubview(lineNameView)
        addSubview(passwordTextField)
        addSubview(linePasswordView)
        addSubview(recoverButton)
        addSubview(loginButton)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            nameTextField.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 100),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            
            lineNameView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            lineNameView.widthAnchor.constraint(equalToConstant: 340),
            lineNameView.heightAnchor.constraint(equalToConstant: 1),
            lineNameView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: lineNameView.bottomAnchor, constant: 50),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            
            linePasswordView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            linePasswordView.widthAnchor.constraint(equalToConstant: 340),
            linePasswordView.heightAnchor.constraint(equalToConstant: 1),
            linePasswordView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            recoverButton.topAnchor.constraint(equalTo: linePasswordView.topAnchor, constant: 10),
            recoverButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
                        
                        
            loginButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -140),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 32),
        ])
        
    }
    
}
