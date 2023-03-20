//
//  APIAuthenticationGateway.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

class APIAuthenticationGatewayImpl: AuthenticationGateway {
    private let networkClient: AlamofireNetwork

    init(networkClient: AlamofireNetwork) {
        self.networkClient = networkClient
    }
    
    func login(loginParamter: LoginParameter,
               completionHandler: @escaping (Result<User, Error>) -> Void) {
        //networkClient.responseData(for: <#T##URLRequestConvertible#>, completion: <#T##(Result<Data, Error>) -> Void#>)(with: loginParamter, completionHandler: completionHandler)
    }
}
