//
//  LoginConfigurator.swift
//  MyPodcasts
//
//  Created by mac on 29/11/2022.
//

import Foundation

// DI Layer
class LoginModuleConfigurator {
    static func configure() -> LoginViewController {
        let viewController = LoginViewController()

        let networkClient = AlamofireNetwork()
        let authenticationGateway = APIAuthenticationGatewayImpl(networkClient: networkClient)
        let userLoginUseCase = UserLoginUseCaseImpl(authenticationGateway: authenticationGateway)
        let presenter = LoginPresenterImpl(loginView: viewController, loginUseCase: userLoginUseCase)

        viewController.presenter = presenter
        return viewController
    }
}
