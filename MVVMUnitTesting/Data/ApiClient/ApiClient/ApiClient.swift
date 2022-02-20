//
//  ApiClient.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

typealias DecodableResult<T: Decodable> = Result<T, Error>
typealias DecodableCompletion<T: Decodable> = (DecodableResult<T>) -> Void

protocol APIClient: AnyObject {
    func makeRequest<T: Decodable>(request: JSONRequest, completion: @escaping DecodableCompletion<T>)
}

struct Response<T: Decodable>: Decodable{
    let data: T?
    let error: ApiError?
}

struct ApiError: Decodable {
    let message: String
    let code: Int
}

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

