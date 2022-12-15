//
//  FirebaseClientError.swift
//  PracticalJobia
//
//  Created by Karim Ebrahem on 06/11/2021.
//

import Foundation

enum FirebaseClientError: Error {
    case loginFailed
    case invalidUserName
}

extension FirebaseClientError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .loginFailed:
            return "Please try again later."
        case .invalidUserName:
            return "please enter unique user name."
        }
        
    }
}
