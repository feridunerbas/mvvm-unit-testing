//
//  GetNewsRequest+Zero.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

@testable import MVVMUnitTesting

extension GetNewsRequest {
    
    static var zero: GetNewsRequest {
        GetNewsRequest(keyword: .zero)
    }
    
    static var random: GetNewsRequest {
        GetNewsRequest(keyword: .random)
    }
    
}
