//
//  ApiError.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

struct ApiError: Decodable {
    let message: String
    let code: Int
}
