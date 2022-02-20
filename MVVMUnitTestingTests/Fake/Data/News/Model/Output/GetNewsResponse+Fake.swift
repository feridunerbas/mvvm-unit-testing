//
//  GetNewsResponse+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

@testable import MVVMUnitTesting

extension GetNewsResponse {
    
    static var random: GetNewsResponse {
        GetNewsResponse(news: NewsDataModel.randomCollection,
                        totalResults: .random,
                        status: .random,
                        code: .random,
                        message: .random)
    }
    
    static var zero: GetNewsResponse {
        GetNewsResponse(news: NewsDataModel.zeroCollection,
                        totalResults: .zero,
                        status: .zero,
                        code: .zero,
                        message: .zero)
    }
    
}
