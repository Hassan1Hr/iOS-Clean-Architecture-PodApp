//
//  LoginPresenter.swift
//  MyPodcasts
//
//  Created by mac on 29/11/2022.
//

import Foundation

protocol LoginPresenter {
    func login(with email: String, and password: String)
}

class LoginPresenterImpl: LoginPresenter {
    private weak var loginView: LoginView?
    private var loginUseCase: UserLoginUseCase

    init(loginView: LoginView, loginUseCase: UserLoginUseCase) {
        self.loginView = loginView
        self.loginUseCase = loginUseCase
    }

    func login(with email: String, and password: String) {
        let parameters = LoginParameter(password: password, email: email)

        loginUseCase.userLogin(loginParamater: parameters) { result in
            switch result {
            case .success:
                self.loginView?.loginSuccessed()
            case .failure:
                self.loginView?.loginFailed()
            }
        }
    }
}
