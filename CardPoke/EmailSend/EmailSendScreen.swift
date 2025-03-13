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
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            //label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 180),
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            ])
    }
    
}
