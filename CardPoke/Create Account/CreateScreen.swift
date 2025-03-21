//
//  CreateScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 19/03/25.
//

import UIKit

class CreateScreen: UIView {

    lazy var BackGround:UIImageView = {
        let bg = UIImageView(image: UIImage(named: "Wallpaper, background"))
        bg.translatesAutoresizingMaskIntoConstraints = false
        return bg
    }()
    
    lazy var nameTextFieldCreate: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray2])
        tf.textColor = .white
        tf.backgroundColor = .clear
        tf.keyboardType = .emailAddress
        tf.layer.borderWidth = 0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    lazy var lineNameViewCreate : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .systemGray
            return line
            }()
    
    lazy var passwordTextFieldCreate: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray2])
        tf.textColor = .white
        tf.backgroundColor = .clear
        tf.backgroundColor = .clear
        tf.keyboardType = .numberPad
        tf.isSecureTextEntry = true
        tf.layer.borderWidth = 0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    lazy var linePasswordViewCreate : UIView = { // line
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .systemGray
            return line
            }()
    
    lazy var createAccountButton : UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Create", for: .normal)
            button.setTitleColor(.black, for: .normal)
            //button.backgroundColor = .systemGray5
            button.backgroundColor = .white.withAlphaComponent(0.5);
            button.layer.cornerRadius = 10
            //button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.systemGray.cgColor
            button.addTarget(self, action: #selector(buttonCreateAccountTappet), for: .touchUpInside)
            return button
        }()
        @objc func buttonCreateAccountTappet(){
        print("Create Account Tappet")
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(BackGround)
        addSubview(nameTextFieldCreate)
        addSubview(lineNameViewCreate)
        addSubview(passwordTextFieldCreate)
        addSubview(linePasswordViewCreate)
        addSubview(createAccountButton)
        
        
    }
    
    func addConstraints(){
        NSLayoutConstraint.activate([
            BackGround.topAnchor.constraint(equalTo: topAnchor),
            BackGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            BackGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            BackGround.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            nameTextFieldCreate.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 320),
            nameTextFieldCreate.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            nameTextFieldCreate.widthAnchor.constraint(equalToConstant: 340),
            
            lineNameViewCreate.topAnchor.constraint(equalTo: nameTextFieldCreate.bottomAnchor, constant: 13),
            lineNameViewCreate.widthAnchor.constraint(equalToConstant: 340),
            lineNameViewCreate.heightAnchor.constraint(equalToConstant: 1),
            lineNameViewCreate.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            passwordTextFieldCreate.topAnchor.constraint(equalTo: lineNameViewCreate.bottomAnchor, constant: 50),
            passwordTextFieldCreate.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            passwordTextFieldCreate.widthAnchor.constraint(equalToConstant: 340),
            
            linePasswordViewCreate.topAnchor.constraint(equalTo: passwordTextFieldCreate.bottomAnchor, constant: 13),
            linePasswordViewCreate.widthAnchor.constraint(equalToConstant: 340),
            linePasswordViewCreate.heightAnchor.constraint(equalToConstant: 1),
            linePasswordViewCreate.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            createAccountButton.bottomAnchor.constraint(equalTo: linePasswordViewCreate.bottomAnchor, constant: 100),
            createAccountButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createAccountButton.widthAnchor.constraint(equalToConstant: 100),
            createAccountButton.heightAnchor.constraint(equalToConstant: 32),
        ])}
            
}
