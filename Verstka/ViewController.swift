//
//  ViewController.swift
//  Verstka
//
//  Created by macbookp on 14.04.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2531631589, green: 0.497982204, blue: 0.8383689523, alpha: 1)
        initialize()
    }
    
    private func initialize() {
        //MARK: - Create labels
        let topLabel = UILabel()
        topLabel.textAlignment = .center
        topLabel.text = "ToDoList"
        topLabel.textColor = .white
        topLabel.font = UIFont.systemFont(ofSize: 50)
        
        let bottomLabel = UILabel()
        bottomLabel.textAlignment = .center
        bottomLabel.textColor = .red
        bottomLabel.text = "User does not exist"
        bottomLabel.isHidden = true
        
        
        let labelStack = UIStackView()
        labelStack.axis = .vertical
        labelStack.addArrangedSubview(topLabel)
        labelStack.addArrangedSubview(bottomLabel)
        labelStack.distribution = .fill
        labelStack.snp.makeConstraints { (maker) in
        }
        
        //MARK: - Create textfields
        let loginTF = UITextField()
        loginTF.placeholder = "Email"
        loginTF.keyboardType = .emailAddress
        loginTF.backgroundColor = .white
        loginTF.layer.cornerRadius = 5
        loginTF.snp.makeConstraints { (maker) in
            maker.height.equalTo(34)
        }
        let passwordTF = UITextField()
        passwordTF.backgroundColor = .white
        passwordTF.layer.cornerRadius = 5
        passwordTF.placeholder = "Password"
        passwordTF.snp.makeConstraints { (maker) in
            maker.height.equalTo(34)
        }
        
        let tfStack = UIStackView()
        tfStack.axis = .vertical
        tfStack.addArrangedSubview(loginTF)
        tfStack.addArrangedSubview(passwordTF)
        tfStack.spacing = 20
        tfStack.distribution = .fill
        
        
        //MARK: - Create buttons
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        loginButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3042558943)
        loginButton.setTitleColor(.blue, for: .highlighted)
        loginButton.layer.cornerRadius = 10
        let regButton = UIButton()
        regButton.setTitle("Register", for: .normal)
        regButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        regButton.setTitleColor(.blue, for: .highlighted)
        
        let buttonStack = UIStackView()
        buttonStack.axis = .vertical
        buttonStack.addArrangedSubview(loginButton)
        buttonStack.addArrangedSubview(regButton)
        buttonStack.distribution = .fill
        buttonStack.spacing = 20
        
        
        //MARK: - Main Stackview and constraints
        let mainStack = UIStackView()
        mainStack.axis = .vertical
        mainStack.spacing = 50
        mainStack.addArrangedSubview(labelStack)
        mainStack.addArrangedSubview(tfStack)
        mainStack.addArrangedSubview(buttonStack)
        view.addSubview(mainStack)
        
        buttonStack.snp.makeConstraints { (maker) in
            maker.left.right.equalTo(mainStack).inset(30)
        }
        
        mainStack.snp.makeConstraints { (maker) in
            maker.center.equalToSuperview()
            maker.left.right.equalToSuperview().inset(40)
        }
        
    }
    
}

