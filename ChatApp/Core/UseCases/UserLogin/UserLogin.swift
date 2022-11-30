//
//  UserLogin.swift
//  ChatApp
//
//  Created by mac on 29/11/2022.
//

import Foundation

protocol UserLoginUseCase{
    func userLogin(
        loginParamater: LoginParamater,
        completionHandler: @escaping (_ user: Result<User,Error>)-> Void
    )
}

class UserLoginUseCaseImpl: UserLoginUseCase{
    func userLogin(
        loginParamater: LoginParamater,
        completionHandler: @escaping (Result<User, Error>) -> Void) {
        
    }
    
    
}
