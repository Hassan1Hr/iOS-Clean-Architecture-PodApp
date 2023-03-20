//
//  Podcatst.swift
//  MyPodcasts
//
//  Created by mac on 15/12/2022.
//

import Foundation

public struct Podcast: Codable {
    let name: String
    let path: String
    let trailer: String
}

public typealias PodcastsList = [Podcast]
