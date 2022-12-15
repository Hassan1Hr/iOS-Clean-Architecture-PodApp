//
//  FirebaseClient.swift
//  ChatApp
//
//  Created by mac on 30/11/2022.
//

import Foundation
import Firebase

protocol FirebaseClient {
    func login(
        with paramater: LoginParameter,
        completionHandler: @escaping (_ result: Result<User, Error>) -> Void )
}

class FirebaseClientImpl: FirebaseClient {
    private let firebaseAuth: Auth
    
    init() {
        self.firebaseAuth = Auth.auth()
    }
    func login(with paramater: LoginParameter,
               completionHandler: @escaping (Result<User, Error>) -> Void) {
        firebaseAuth.signIn(withEmail: paramater.email,
                            password: paramater.password
        ) { authResult, _ in
            guard let _ = authResult?.user.uid else {
                completionHandler(.failure(FirebaseClientError.loginFailed))
                return
            }
        }
    }
}
