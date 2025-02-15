//
//  ViewScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 13/02/25.
//

import UIKit


protocol buttonEnter: AnyObject {
    func buttonEnterPressed()
}

class ViewScreen: UIView {

    var delegate: buttonEnter?  // var do tipo do protocol
    
    lazy var backgroundimage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Pokémon ✖️")  // Define uma imagem
        //image.contentMode = .scaleAspectFit  // Define o modo de escala da imagem
        return image
    }()
    
    lazy var labelTitle : UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.textAlignment = .center
        lb.text = "Welcome to Card Poke"
        lb.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    
    lazy var buttonSelectButton : UIButton = {
            let bt = UIButton() // (type: .system) , ja tem um padrao estabelecido do sistema
            bt.translatesAutoresizingMaskIntoConstraints = false
            bt.setTitle("Enter", for: .normal) // texto do botao
            bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)// tamanho da fonte
            bt.setTitleColor(.black, for: .normal) // cor e estilo
            bt.backgroundColor = UIColor.systemGray5 // cor com transparencia, mesma cor da view
            bt.layer.cornerRadius = 10 // angulo das bordas
            bt.clipsToBounds = true // habilita bordas arredondadas
            bt.layer.borderWidth = 1.0// largura borda
            bt.layer.borderColor = UIColor.black.cgColor // cor da borda
            bt.addTarget(self, action: #selector(tappetButtonSelectButton), for: .touchUpInside)
            return  bt
        }()
        @objc func tappetButtonSelectButton( _ sender: UIButton){ // método invocado pela acao do botao, padrao
            print("clicou")
            delegate?.buttonEnterPressed()
            }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(backgroundimage)
        addSubview(labelTitle)
        addSubview(buttonSelectButton)
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate( [
            
            backgroundimage.topAnchor.constraint(equalTo: topAnchor),
            backgroundimage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundimage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundimage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buttonSelectButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -125),
            buttonSelectButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonSelectButton.widthAnchor.constraint(equalToConstant: 100),
            buttonSelectButton.heightAnchor.constraint(equalToConstant: 32),        ])
    }
    
}
