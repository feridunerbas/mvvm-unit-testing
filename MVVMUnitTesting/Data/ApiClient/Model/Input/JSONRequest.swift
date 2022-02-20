//
//  JSONRequest.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

struct JSONRequest {
    
    // MARK: - Properties
    let url: URL
    let method: HTTPMethod
    var headers: [String: String] = [:]
    var parameters: [String: Any] = [:]

}
