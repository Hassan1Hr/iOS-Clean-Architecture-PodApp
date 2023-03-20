//
//  UserLoginError.swift
//  PracticalJobia
//
// Created by mac on 15/12/2022.
//

import Foundation

enum UserLoginError: Error {
    case notValidEmail
    case passwordNotLongEnough
}

extension UserLoginError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notValidEmail:
            return "Please enter valid Email address."
        case .passwordNotLongEnough:
            return "Password must be at least 8 characters long."
        }
    }
}
