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

        let firebaseClient = FirebaseClientImpl()
        let authenticationGateway = APIAuthenticationGatewayImpl(firebaseClient: firebaseClient)
        let userLoginUseCase = UserLoginUseCaseImpl(authenticationGateway: authenticationGateway)
        let presenter = LoginPresenterImpl(loginView: viewController, loginUseCase: userLoginUseCase)

        viewController.presenter = presenter
        return viewController
    }
}
