//
//  LoginConfigurator.swift
//  ChatApp
//
//  Created by mac on 29/11/2022.
//


import Foundation

// DI Layer
class LoginModuleConfigurator {
    static func configure() -> LoginViewController {
        let viewController = LoginViewController()

        let firebaseClient = FirebaseClientImplementation()
        let authenticationGateway = APIAuthenticationGatewayImplementation(firebaseClient: firebaseClient)
        let userLoginUseCase = UserLoginUseCaseImplementation(authenticationGateway: authenticationGateway)
        let presenter = LoginPresenterImplementation(loginView: viewController, loginUseCase: userLoginUseCase)

        viewController.presenter = presenter
        return viewController
    }
}
