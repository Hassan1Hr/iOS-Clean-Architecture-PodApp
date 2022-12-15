//
//  Route.swift
//  ChatApp
//
//  Created by mac on 15/12/2022.
//

import Foundation

protocol ClientRoute {
    func route(from id: String, command: Date)
}
