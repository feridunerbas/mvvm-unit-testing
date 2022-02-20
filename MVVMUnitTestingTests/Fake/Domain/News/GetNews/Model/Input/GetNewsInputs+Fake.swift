//
//  GetNewsInputs+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

@testable import MVVMUnitTesting

extension GetNewsInputs {
    
    static var zero: GetNewsInputs {
        GetNewsInputs(keyword: .zero)
    }
    
    static var random: GetNewsInputs {
        GetNewsInputs(keyword: .random)
    }
    
}
