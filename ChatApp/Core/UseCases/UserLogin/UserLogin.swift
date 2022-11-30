//
//  UserLogin.swift
//  ChatApp
//
//  Created by mac on 29/11/2022.
//

import Foundation

protocol UserLoginUseCase {
    func userLogin(
        loginParamater: LoginParamater,
        completionHandler: @escaping (_ user: Result<User, Error>) -> Void
    )
}

class UserLoginUseCaseImpl: UserLoginUseCase {
    let authentecationGateway: AuthentecationGateway
    
    init(authentecationGateway: AuthentecationGateway) {
        self.authentecationGateway = authentecationGateway
    }
    func userLogin(
        loginParamater: LoginParamater,
        completionHandler: @escaping (Result<User, Error>) -> Void) {
            guard loginParamater.password.count > 8 else {
                completionHandler(.failure(UserLoginError.passwordNotLongEnough))
                return
            }
            guard loginParamater.email.isValidEmail() else {
                completionHandler(.failure(UserLoginError.notValidEmail))
                return
            }
            authentecationGateway.login(loginParamter: loginParamater,
                                        completionHandler: completionHandler)
    }
    
}
