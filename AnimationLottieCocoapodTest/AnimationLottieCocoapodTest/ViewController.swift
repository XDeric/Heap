//
//  ViewController.swift
//  AnimationLottieCocoapodTest
//
//  Created by EricM on 2/3/20.
//  Copyright © 2020 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var message: UILabel = {
        let text = UILabel()
        text.text = "Success!"
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        Constraint()
        // Do any additional setup after loading the view.
    }
    
    func Constraint(){
        message.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(message)
        NSLayoutConstraint.activate([
        message.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        message.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }


}

