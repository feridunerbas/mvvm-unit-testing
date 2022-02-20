//
//  ResponseError.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

enum ResponseError: Error {
    case service(code: String, message: String)
}

// MARK: - LocalizedError
extension ResponseError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .service(_, let message):
            return message
        }
    }
    
}
