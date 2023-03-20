//
//  User.swift
//  MyPodcasts
//
//  Created by mac on 29/11/2022.
//

import Foundation

struct User: Codable {
    var id = ""
    var username: String
    var email: String
    var pushId = ""
    var avatarLink = ""
    var status: String
}
