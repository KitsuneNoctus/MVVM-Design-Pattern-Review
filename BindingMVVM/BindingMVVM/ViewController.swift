//
//  ViewController.swift
//  BindingMVVM
//
//  Created by Henry Calderon on 7/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var loginVM = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    @objc func login() {
        print(loginVM.username)
        print(loginVM.password)
    }
    
    func setupUI() {
        let usernameTextField = BindingTextField()
        usernameTextField.placeholder = "Enter Username"
        usernameTextField.backgroundColor = .lightGray
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.bind { [weak self] text in
            self?.loginVM.username = text
        }
        
        let passwordTextField = BindingTextField()
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.backgroundColor = .lightGray
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.bind { [weak self] text in
            self?.loginVM.password = text
        }
        
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .gray
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [usernameTextField, passwordTextField, loginButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        
        self.view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }


}

