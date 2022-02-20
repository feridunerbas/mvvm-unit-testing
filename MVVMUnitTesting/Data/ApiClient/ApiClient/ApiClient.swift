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

extension APIClient {
    
    var configuration: ConfigurationProtocol { resolve() }
    
    func commonHeaders() -> [String: String] {
        [
            "X-Api-Key": configuration.newsFeedApiKey
        ]
    }
    
}
