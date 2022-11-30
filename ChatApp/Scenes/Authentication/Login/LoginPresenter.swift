//
//  LoginPresenter.swift
//  ChatApp
//
//  Created by mac on 29/11/2022.
//


import Foundation

protocol LoginPresenter {
    func login(with email: String, and password: String)
}

class LoginPresenterImplementation: LoginPresenter {
    private weak var loginView: LoginView?
    private var loginUseCase: UserLoginUseCase

    init(loginView: LoginView, loginUseCase: UserLoginUseCase) {
        self.loginView = loginView
        self.loginUseCase = loginUseCase
    }

    func login(with email: String, and password: String) {
        let parameters = LoginParameters(email: email, password: password)

        loginUseCase.login(parameters: parameters) { result in
            switch result {
            case .success:
                break
            case .failure:
                break
            }
        }
    }
}
