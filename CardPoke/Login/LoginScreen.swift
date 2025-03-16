//
//  LoginScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 25/02/25.
//

import UIKit

protocol LoginButtonprotocol: AnyObject {
    func loginButtonTapped()
    func recoverButtonTapped()
}

class LoginScreen: UIView {
    
    weak var delegate: LoginButtonprotocol?

    lazy var backgroundImage: UIImageView = {
        let bg = UIImageView(image: UIImage(named: "Pokémon"))
        bg.contentMode = .scaleAspectFill
        bg.translatesAutoresizingMaskIntoConstraints = false
        return bg
    }()
    
    lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.systemGray2])
        tf.textColor = .white
        tf.backgroundColor = .clear
        tf.keyboardType = .emailAddress
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
    
    lazy var imageVisibleKey: UIImageView = {
            let image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.image = UIImage(named: "password-svgrepo-com-2")
            image.isUserInteractionEnabled = true // habilita interacao com a imagem
            return image
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
            button.setTitleColor(.systemGray2, for: .normal)
            button.backgroundColor = .clear  //remove visual do botao
            button.layer.borderWidth = 0     // remove bordas
            button.addTarget(self, action: #selector(recoverButtonTappet), for: .touchUpInside)
            return button
        }()
        @objc func recoverButtonTappet(){ // acao do botao ao ser clicado
            print("clicou recuperar senha ")
            delegate?.recoverButtonTapped()
            }
    
    lazy var withLabel : UILabel = {
        let wl = UILabel()
        wl.translatesAutoresizingMaskIntoConstraints = false
        wl.textColor = .systemGray2
        wl.textAlignment = .center
        wl.font = UIFont.systemFont(ofSize: 18)
        wl.text = "Enter with:"
        return wl
        
    }()
    
    
    lazy var loginButton : UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.isEnabled = false
            button.setTitle("Login", for: .normal)
            button.setTitleColor(.black, for: .normal)
            //button.backgroundColor = .systemGray5
            button.backgroundColor = .black.withAlphaComponent(0.5);
            button.layer.cornerRadius = 10
            //button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.systemGray.cgColor
            button.addTarget(self, action: #selector(buttonTappet), for: .touchUpInside)
            return button
        }()
        @objc func buttonTappet( _ sender: UIButton){
            print("clicou")
            delegate?.loginButtonTapped()
        }
    
    
    private func addGestureRecognizers() {
               let touchDownGesture = UILongPressGestureRecognizer(target: self, action: #selector(showPassword))
            touchDownGesture.minimumPressDuration = 0.1
                imageVisibleKey.addGestureRecognizer(touchDownGesture) // associado o gesto á esse elemento
                let touchUpGesture = UITapGestureRecognizer(target: self, action: #selector(hidePassword))
                imageVisibleKey.addGestureRecognizer(touchUpGesture)
           }
    @objc private func showPassword(_ sender: UILongPressGestureRecognizer) {
            if sender.state == .began {
                passwordTextField.isSecureTextEntry = false
                imageVisibleKey.image = UIImage(named: "password-minimalistic-svgrepo-com-2") // troca a imagem
            }
        
            }
        @objc private func hidePassword(_ sender: UITapGestureRecognizer) {
            passwordTextField.isSecureTextEntry = true
            imageVisibleKey.image = UIImage(named: "password-svgrepo-com-2") // troca a imagem
        }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addelements()
        setupConstraints()
        setupDismissKeyboardGesture()
        addGestureRecognizers() // imagem de exibir campo senha
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addelements(){
        addSubview(backgroundImage)
        addSubview(nameTextField)
        addSubview(lineNameView)
        addSubview(passwordTextField)
        addSubview(imageVisibleKey)
        addSubview(linePasswordView)
        addSubview(recoverButton)
        addSubview(withLabel)
        addSubview(loginButton)
    }
    
    public func configDelegateTextField(delegate: UITextFieldDelegate){  // func assinatura do protocol
        nameTextField.delegate = delegate   // elementos a serem validados dentro desse protocol
        passwordTextField.delegate = delegate
        }
        
    
        // metodo com a validacao dos campos alvos, e tomadas de ações
         private func validaTextField (){
            let email: String = nameTextField.text ?? " "   //pode receber ou nao valores, possui valor default
            let password: String = passwordTextField.text ?? " "
                       
            if !email.isEmpty && !password.isEmpty {   // se estiverem preenchidos faça
                loginButton.isEnabled = true
                loginButton.backgroundColor = .systemGray
                loginButton.layer.borderColor = UIColor.black.cgColor}
             else {
                 loginButton.isEnabled = false
                 
                 loginButton.backgroundColor = .black.withAlphaComponent(0.5);
                 loginButton.layer.borderColor = UIColor.systemGray.cgColor
                 
                    // gerador de advertencia visual, caso algum campo fique vazio TEXTFIELD
                    if email.isEmpty {
                        nameTextField.layer.borderColor = UIColor.yellow.cgColor
                        nameTextField.layer.borderWidth = 1
                        }
                    if password.isEmpty{
                        passwordTextField.layer.borderColor = UIColor.yellow.cgColor
                        passwordTextField.layer.borderWidth = 1
                        }
                }
        }
    
    
        func callValidaTextField(){ // metodo public invoca método private
            validaTextField()
        }
    
    
    // funcao que baixa o teclado ao tocar na tela
       private func setupDismissKeyboardGesture() {
               let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
               tapGesture.cancelsTouchesInView = false // Permite que outros gestos ainda sejam processados
           self.addGestureRecognizer(tapGesture)
           }
       @objc private func dismissKeyboard() {
           self.endEditing(true) // Fecha o teclado
           
           if nameTextField.text?.isEmpty ?? true{
               nameTextField.layer.borderColor = UIColor.yellow.cgColor
               nameTextField.layer.borderWidth = 1
               }
           if passwordTextField.text?.isEmpty ?? true {
               passwordTextField.layer.borderColor = UIColor.yellow.cgColor
               passwordTextField.layer.borderWidth = 1
               }
          }
       
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            nameTextField.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 100),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            nameTextField.widthAnchor.constraint(equalToConstant: 340),
            
            lineNameView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            lineNameView.widthAnchor.constraint(equalToConstant: 340),
            lineNameView.heightAnchor.constraint(equalToConstant: 1),
            lineNameView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            passwordTextField.topAnchor.constraint(equalTo: lineNameView.bottomAnchor, constant: 50),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            passwordTextField.widthAnchor.constraint(equalToConstant: 340),
            
            imageVisibleKey.topAnchor.constraint(equalTo: passwordTextField.topAnchor),
            imageVisibleKey.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            imageVisibleKey.widthAnchor.constraint(equalToConstant: 35),
            imageVisibleKey.heightAnchor.constraint(equalToConstant: 30),
                       
            linePasswordView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 13),
            linePasswordView.widthAnchor.constraint(equalToConstant: 340),
            linePasswordView.heightAnchor.constraint(equalToConstant: 1),
            linePasswordView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            recoverButton.topAnchor.constraint(equalTo: linePasswordView.topAnchor, constant: 10),
            recoverButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            
            withLabel.topAnchor.constraint(equalTo: recoverButton.bottomAnchor, constant: 88),
            withLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                        
                        
            loginButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -140),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 32),
        ])
        
    }
    
}
