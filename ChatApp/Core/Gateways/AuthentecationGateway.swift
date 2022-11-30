//
//  AuthentecationGateway.swift
//  ChatApp
//
//  Created by mac on 30/11/2022.
//

import Foundation

protocol AuthentecationGateway{
    func login(
        loginParamter: LoginParamater,
        completionHandler: @escaping (_ user: Result<User,Error>)-> Void
    )
}
