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
        with paramater: LoginParamater,
        completionHandler: @escaping (_ result: Result<User, Error>) -> Void )
}


