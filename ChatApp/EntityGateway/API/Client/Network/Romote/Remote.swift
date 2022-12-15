//
//  Remote.swift
//  ChatApp
//
//  Created by mac on 15/12/2022.
//

import Foundation

protocol Remote{
    func requstEstimation(from user: String,
                                  path: String) -> () -> Bool
}
