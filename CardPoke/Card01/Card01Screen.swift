//
//  Card01Screen.swift
//  CardPoke
//
//  Created by Ronan Soares on 14/02/25.
//

import UIKit

protocol testDelegate: AnyObject {
    func testDelegateMethod()
}

class Card01Screen: UIView {
    
    weak var delegate: testDelegate?
        
    lazy var labelTitle : UILabel = {
        let lb = UILabel()
        lb.textColor = .green.withAlphaComponent(0.6)
        lb.textAlignment = .center
        lb.text = "Bulbasaur"
        lb.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
        }()
    
    lazy var imageCard: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "001")
        imageView.isUserInteractionEnabled = true  // habilita toque na image
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private var isFlipped = false // Controle do estado da imagem
    
    private func addTapGesture() { // metodo que aceita toque na imagem ou outro elemento
           let tapGesture = UITapGestureRecognizer(target: self, action: #selector(flipImage))
        imageCard.addGestureRecognizer(tapGesture)
       }

       @objc private func flipImage() { // metodo invocado apos o toque no elemento
           let newImage = isFlipped ? UIImage(named: "001") : UIImage(named: "Screenshot 2025-02-16 at 14.49.50")

           // metodo nativo para acao de flip da imagem
           UIView.transition(with: imageCard, duration: 0.5, options: .transitionFlipFromRight, animations: {
               self.imageCard.image = newImage
           }, completion: nil)

           isFlipped.toggle() // Inverte o estado
            }
    
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
    
    lazy var buttonNext : UIButton = {
            let bt = UIButton() // (type: .system) , ja tem um padrao estabelecido do sistema
            bt.translatesAutoresizingMaskIntoConstraints = false
            bt.setTitle("Next", for: .normal) // texto do botao
            bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
            bt.setTitleColor(.black, for: .normal) // cor e estilo
            bt.backgroundColor = UIColor.systemGray5 // cor com transparencia, mesma cor da view
            bt.layer.cornerRadius = 10 // angulo das bordas
            bt.clipsToBounds = true // habilita bordas arredondadas
            bt.layer.borderWidth = 1.0// largura borda
            bt.layer.borderColor = UIColor.black.cgColor // cor da borda
            bt.addTarget(self, action: #selector(tappetButtonNext), for: .touchUpInside)
            return  bt
        }()
        @objc func tappetButtonNext( _ sender: UIButton){ // método invocado pela acao do botao, padrao
            print(#function)
            delegate?.testDelegateMethod()
            }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addTapGesture()
        addElements()
        addConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(labelTitle)
        addSubview(imageCard)
        addSubview(buttonNext)
        addSubview(logoPokeBall)
    }
    
    
    func resetImageToFront() {  // método que faz a imagem voltar a face inicial
        if (isFlipped == true){
            flipImage() }
    }

    func addConstraints(){
        NSLayoutConstraint.activate([
            
            labelTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            imageCard.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 70),
            imageCard.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageCard.widthAnchor.constraint(equalToConstant: 300),
            imageCard.heightAnchor.constraint(equalToConstant: 370),
            
            logoPokeBall.topAnchor.constraint(equalTo: imageCard.bottomAnchor, constant: 12),
            //logoPokeBall.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            logoPokeBall.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoPokeBall.widthAnchor.constraint(equalToConstant: 40),
            logoPokeBall.heightAnchor.constraint(equalToConstant: 40),
            
            buttonNext.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            buttonNext.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonNext.widthAnchor.constraint(equalToConstant: 100),
            buttonNext.heightAnchor.constraint(equalToConstant: 32),
        ])
    }
    
}
