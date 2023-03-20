//
//  RemoteValidator.swift
//  MyPodcasts
//
//  Created by mac on 15/12/2022.
//

import Foundation

/// FakeStore.com Response Validator
///
struct RemoteErrorValidator {

    /// Returns the DotcomError contained in a given Data Instance (if any).
    ///
    static func error(from response: Data) -> Error? {
        return try? JSONDecoder().decode(RemoteError.self, from: response)
    }
}
