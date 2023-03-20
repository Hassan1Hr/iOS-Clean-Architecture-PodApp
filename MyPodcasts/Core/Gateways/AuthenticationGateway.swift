//
//  AuthentecationGateway.swift
//  MyPodcasts
//
//  Created by mac on 30/11/2022.
//

import Foundation

protocol AuthenticationGateway {
    func login(
        loginParamter: LoginParameter,
        completionHandler: @escaping (_ user: Result<User, Error>) -> Void
    )
}
