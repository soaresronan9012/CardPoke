//
//  SettingsCard.swift
//  CardPoke
//
//  Created by Ronan Soares on 20/02/25.
//

import UIKit

protocol SettingsCardDelegate: AnyObject {  // protocolo padrao para classes filhas
    func returnSettings()
}

class SettingsCard: UIView {
    
    weak var delegate: SettingsCardDelegate?
    
    private let BGimageView: UIImageView = {  // background imagem
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "Pokémon ✖️")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    
    private let cardImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    
    private var Image: UIImage?
    
    
    // 🔹 Inicializador permitindo customização
    init(ImageName: String) {
        super.init(frame: .zero) //Passar .zero significa que a view será criada sem um tamanho fixo inicial, e o layout será ajustado depois.
        
        //nomelabel.text = title  // nome pokemon
        Image = UIImage(named: ImageName)  // var que recebe o parametro nome imagem
        cardImage.image = Image  // atribui parametro imagem ao elemento imagem
        
        // metodos invocados
        setupView()
        setupConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupView() {
        addSubview(BGimageView)
        addSubview(cardImage)
        
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            BGimageView.topAnchor.constraint(equalTo: topAnchor),
            BGimageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            BGimageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            BGimageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            

            cardImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            cardImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardImage.widthAnchor.constraint(equalToConstant: 355),
            cardImage.heightAnchor.constraint(equalToConstant: 545),
            
            
        ])
    }
    
}


    
