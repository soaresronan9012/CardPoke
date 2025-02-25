//
//  CardView.swift
//  CardPoke
//
//  Created by Ronan Soares on 15/02/25.
//

import UIKit

protocol CardViewDelegate: AnyObject {  // protocolo padrao para classes filhas
    func didTapNextButton()
    func gotoSettings()
}

class CardView: UIView { // declaração de classe

        weak var delegate: CardViewDelegate? // var do tipo delegate
    
        private let titleLabel: UILabel = {  // componente de titulo
            let label = UILabel()
            label.textColor = .white
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        private let imageView: UIImageView = {  // componente de imagem
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 20
            imageView.isUserInteractionEnabled = true // Habilita toque na imagem, tem metodo especifico
            return imageView
        }()
    
    private let logoPokeBall: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.image = UIImage(named: "pokeball-pokemon-svgrepo-com")
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 20
            imageView.isUserInteractionEnabled = true // Habilita toque na imagem, tem metodo especifico
            return imageView
    }()
    // funcao que habilita click na imagem algo
    private func setupGesturePoke() {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(pokeballTapped))
        logoPokeBall.addGestureRecognizer(tapGesture)
        }
    
        @objc private func pokeballTapped() { // acao ao ser clicado a imagem
            delegate?.gotoSettings()
        }
    
    
        
        private let actionButton: UIButton = {  // componente de botao
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = UIColor.systemGray5
            button.layer.cornerRadius = 10
            button.clipsToBounds = true
            button.layer.borderWidth = 1.0
            button.layer.borderColor = UIColor.black.cgColor
            return button
        }()
        
    
        // propriedades internas
    
        private var isFlipped = false  //Booleano para controlar o estado da imagem (frente ou verso)
        private var frontImage: UIImage?  // imagem frente
        private var backImage: UIImage?  // imagem verso
        private var buttonAction: (() -> Void)?  //Função opcional que será chamada quando o botão for pressionado.
    
        // 🔹 Inicializador permitindo customização
        init(title: String,titleColor: UIColor ,frontImageName: String, backImageName: String, buttonTitle: String, buttonAction: @escaping () -> Void) {
            super.init(frame: .zero) //Passar .zero significa que a view será criada sem um tamanho fixo inicial, e o layout será ajustado depois.
            backgroundColor = .black
            
            titleLabel.text = title
            titleLabel.textColor = titleColor // cor do texto
            frontImage = UIImage(named: frontImageName)
            backImage = UIImage(named: backImageName)
            imageView.image = frontImage
            actionButton.setTitle(buttonTitle, for: .normal)
            self.buttonAction = buttonAction
            
            setupView()
            addTapGesture()
            setupGesturePoke()
        }
        
    
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    
        private func setupView() {
            addSubview(titleLabel)
            addSubview(imageView)
            addSubview(actionButton)
            addSubview(logoPokeBall)
            
            //Associa um método para ser chamado quando o botão for pressionado.
            actionButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 65),
                imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 300),
                imageView.heightAnchor.constraint(equalToConstant: 370),
                
                logoPokeBall.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
                //logoPokeBall.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
                logoPokeBall.centerXAnchor.constraint(equalTo: centerXAnchor),
                logoPokeBall.widthAnchor.constraint(equalToConstant: 40),
                logoPokeBall.heightAnchor.constraint(equalToConstant: 40),
                //logoPokeBall.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -30),
                
                actionButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
                //actionButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant:20),
                actionButton.centerXAnchor.constraint(equalTo: centerXAnchor),
                actionButton.widthAnchor.constraint(equalToConstant: 100),
                actionButton.heightAnchor.constraint(equalToConstant: 32)
            ])
        }
        
        
        //- Cria um `UITapGestureRecognizer` que chama `flipImage()` quando a imagem for tocada.
        private func addTapGesture() {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(flipImage))
            imageView.addGestureRecognizer(tapGesture)
        }

        //Adiciona o gesto à `imageView`.
        @objc private func flipImage() {
            let newImage = isFlipped ? frontImage : backImage // valida qual imagem apresentar conforme a face esta

            UIView.transition(with: imageView, duration: 0.5, options: .transitionFlipFromRight, animations: {
                self.imageView.image = newImage
            }, completion: nil)

            isFlipped.toggle()
        }
        
        @objc private func buttonTapped() {
            delegate?.didTapNextButton() // ao clicar no botao invoca esse metodo
        }
    
        
        func resetImageToFront() {  // método que faz a imagem voltar a face inicial
            if (isFlipped == true){
                flipImage() }
        }

}
