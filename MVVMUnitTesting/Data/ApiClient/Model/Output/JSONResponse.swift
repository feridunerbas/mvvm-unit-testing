//
//  JSONResponse.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

struct JSONResponse<T: Decodable>: Decodable{
    let data: T?
    let error: ApiError?
}
