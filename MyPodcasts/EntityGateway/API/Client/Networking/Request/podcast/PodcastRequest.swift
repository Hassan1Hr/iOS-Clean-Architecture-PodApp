//
//  PodcastRequest.swift
//  MyPodcasts
//
//  Created by mac on 02/04/2023.
//

import Foundation

enum PodcastRequest: RequestProtocol {
    case getPopularPodcastsWith(page: Int)
    case fetchRandomPodcast
    case getCategoryWith(genreId: Int, page: Int, region: String)
    
    var path: String {
        switch self{
        case .getPopularPodcastsWith:
            return "curated_podcasts"
        case .fetchRandomPodcast:
            return "just_listen"
        case .getCategoryWith:
            return "best_podcasts"
        }
    }
    
    var urlParams: [String: String?] {
        switch self {
        case let .getPopularPodcastsWith(page):
            return ["page": String(page)]
            
        case  .fetchRandomPodcast:
            return [:]
            
        case let .getCategoryWith(genreId, page, _):
            return ["page": String(page), "genre_id": String(genreId)]
        }
    }
    
    var requestType: RequestType {
        .GET
    }
}
