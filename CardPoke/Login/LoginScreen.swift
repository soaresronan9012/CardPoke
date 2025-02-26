//
//  LoginScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 25/02/25.
//

import UIKit

class LoginScreen: UIView {

    lazy var backgroundImage: UIImageView = {
        let bg = UIImageView(image: UIImage(named: "login_bg"))
        bg.contentMode = .scaleAspectFill
        bg.translatesAutoresizingMaskIntoConstraints = false
        return bg
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
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
        addSubview(passwordTextField)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            
        ])
        
    }
    
}
