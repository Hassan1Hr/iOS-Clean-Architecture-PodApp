//
//  PodcastRemote.swift
//  MyPodcasts
//
//  Created by mac on 15/12/2022.
//

import Foundation

/// Protocol for `PodcastRemote` mainly used for mocking.
///
public protocol PodcastRemoteProtocol {
    func loadPodcasts(at page: Int, completion: @escaping (Result<[Podcast], Error>) -> Void)
    
    func loadSinglePodcast(podcastID: Int, completion: @escaping (Result<Podcast, Error>) -> Void)
}

/// Podcasts: Remote Endpoints
///
public class PodcastRemote: Remote, PodcastRemoteProtocol {

    /// Loads all available Podcasts
    ///
    public func loadPodcasts(at page: Int, completion: @escaping (Result<[Podcast], Error>) -> Void) {
        let path = "Podcasts"
        let parameters = ["offset": page,
                          "limit": Defaults.perPageLimit]
        let request = FakeStoreRequest(method: .get, path: path, parameters: parameters)

        enqueue(request, completion: completion)
    }

    /// Loads all available Podcasts
    ///
    public func loadSinglePodcast(podcastID: Int, completion: @escaping (Result<Podcast, Error>) -> Void) {
        let path = "Podcasts/\(podcastID)"
        let request = FakeStoreRequest(method: .get, path: path)
        enqueue(request, completion: completion)
    }
}

// MARK: Constants

extension PodcastRemote {
    enum Defaults {
        static let perPageLimit = 10
    }
}
