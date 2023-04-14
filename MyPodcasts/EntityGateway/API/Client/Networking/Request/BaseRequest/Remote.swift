//
//  Remote.swift
//  MyPodcasts
//
//  Created by mac on 15/12/2022.
//
import Foundation

/// Represents a collection of Remote Endpoints
///
protocol RemoteProtocol {
    func perform<T: Decodable>(_ request: RequestProtocol) async throws -> T
}

class Remote: RemoteProtocol {

    /// Networking Wrapper: Dependency Injection Mechanism, useful for Unit Testing purposes.
    ///
    let network: Network
    
    /// parser layer to decode the Backend's Response.
    ///
    let parser: DataParserProtocol
    
    /// Designated Initializer.
    ///
    /// - Parameters:
    ///     - credentials: Credentials to be used in order to authenticate every request.
    ///     - network: Network Wrapper, in charge of actually enqueueing a given network request.
    ///     - parser: Parser  will be used to attempt to decode the Backend's Response.
    ///
    init(network: Network = Network(),
         parser: DataParserProtocol = DataParser()) {
        self.network = network
        self.parser = parser
    }
    
    /// Enqueues the specified Network Request.
    ///
    /// - Parameters:
    ///     - request: Request that should be performed.
    ///     - completion: Closure to be executed upon completion.
    ///
    func perform<T: Decodable>(_ request: RequestProtocol) async throws -> T {
      let data = try await network.perform(request)
      let decoded: T = try parser.parse(data: data)
      return decoded
    }
    
}
