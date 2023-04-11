//
//  Network.swift
//  MyPodcasts
//
//  Created by mac on 15/12/2022.
//
import Foundation

protocol NetworkProtocol {

    /// Executes the specified Network Request. Upon async, the payload will be sent back to the caller as a Data instance.
    ///
    func perform(_ request: RequestProtocol) async throws -> Data
}

/// AlamofireWrapper: Encapsulates all of the Alamofire OP's
///
class Network: NetworkProtocol {

    private let urlSession: URLSession
    
    init(urlSession: URLSession = URLSession.shared) {
      self.urlSession = urlSession
    }

    /// Executes the specified Network Request. Upon completion, the payload will be sent back to the caller as a Data instance.
    ///
    func perform(_ request: RequestProtocol) async throws -> Data {
      let (data, response) = try await urlSession.data(for: request.createURLRequest())
      guard let httpResponse = response as? HTTPURLResponse,
        httpResponse.statusCode == 200 else { throw NetworkError.invalidServerResponse }
      return data
    }
}
