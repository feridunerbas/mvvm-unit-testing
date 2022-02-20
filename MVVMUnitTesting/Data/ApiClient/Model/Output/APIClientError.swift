//
//  APIClientError.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

enum APIClientError: Error {
    case unexpectedResponse
    case api(message: String, code: Int)
}

extension APIClientError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .api(let message, _):
            return message
        default:
            return "\(self)"
        }
    }
}
