//
//  LoginViewController.swift
//  ChatApp
//
//  Created by mac on 29/11/2022.
//

import UIKit

protocol LoginView: AnyObject {
    func loginSuccessed()
    func loginFailed()
}

class LoginViewController: UIViewController {

    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginButton: UIButton!

    var presenter: LoginPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func login(_ sender: UIButton) {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else { return }

        presenter.login(with: email, and: password)
    }

}

extension LoginViewController: LoginView {
    func loginSuccessed() {
        present(UIAlertController(title: "Alert",
                                  message: "greate, success login",
                                  preferredStyle: .alert),
                                  animated: true)
    }
    
    func loginFailed() {
        present(UIAlertController(title: "OOP",
                                  message: "fail to login",
                                  preferredStyle: .alert),
                                  animated: true)
    }
    
}
