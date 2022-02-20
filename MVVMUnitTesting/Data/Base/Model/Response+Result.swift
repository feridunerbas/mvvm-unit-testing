//
//  Response+Result.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

extension Result where Success: Response, Failure == Error {
    
    func mapApiErrors() -> Result<Success, Failure> {
        switch self {
        case .success(let response):
            if response.code == "error" {
                return .failure(
                    ResponseError.service(code: response.code ?? "", message: response.message ?? "")
                )
            } else {
                return self
            }
        default:
            return self
        }
    }

}
