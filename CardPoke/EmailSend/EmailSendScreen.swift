//
//  EmailSendScreen.swift
//  CardPoke
//
//  Created by Ronan Soares on 09/03/25.
//

import UIKit

class EmailSendScreen: UIView {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "email Send!!!!"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage( named: "send-mail-svgrepo-com")
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addSubviews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubviews() {
        addSubview(label)
        addSubview(icon)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            //label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 180),
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            icon.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 40),
            icon.centerXAnchor.constraint(equalTo: centerXAnchor),
            icon.widthAnchor.constraint(equalToConstant: 100),
            icon.heightAnchor.constraint(equalToConstant: 100),
            
            ])
    }
    
}
