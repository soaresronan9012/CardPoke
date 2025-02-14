//
//  ViewScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 13/02/25.
//

import UIKit

class ViewScreen: UIView {

    lazy var labelTitle : UILabel = {
        let lb = UILabel()
        lb.textColor = .black
        lb.textAlignment = .center
        lb.text = "Welcome to Card Poke"
        lb.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    lazy var imageIntro: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "icons8-pokemon-de-luta-100")  // Define uma imagem
        image.contentMode = .scaleAspectFit  // Define o modo de escala da imagem
        return image
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
            print(#function)
            }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        backgroundColor = .systemGray6
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(labelTitle)
        addSubview(imageIntro)
        addSubview(buttonSelectButton)
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate( [
            labelTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            imageIntro.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 180),
            imageIntro.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageIntro.widthAnchor.constraint(equalToConstant: 150),
            imageIntro.heightAnchor.constraint(equalToConstant: 150),
            
            buttonSelectButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -125),
            buttonSelectButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonSelectButton.widthAnchor.constraint(equalToConstant: 100),
            buttonSelectButton.heightAnchor.constraint(equalToConstant: 32),        ])
    }
    
}
