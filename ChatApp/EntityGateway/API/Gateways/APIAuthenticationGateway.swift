//
//  APIAuthenticationGateway.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

class APIAuthenticationGatewayImpl: AuthenticationGateway {
    private let firebaseClient: FirebaseClient

    init(firebaseClient: FirebaseClient) {
        self.firebaseClient = firebaseClient
    }
    
    func login(loginParamter: LoginParameter,
               completionHandler: @escaping (Result<User, Error>) -> Void) {
        firebaseClient.login(with: loginParamter, completionHandler: completionHandler)
    }
}
