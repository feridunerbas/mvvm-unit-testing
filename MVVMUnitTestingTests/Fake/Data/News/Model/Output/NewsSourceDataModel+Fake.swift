//
//  NewsSourceDataModel+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

@testable import MVVMUnitTesting

extension NewsSourceDataModel {
    
    static var zero: NewsSourceDataModel {
        NewsSourceDataModel(id: .zero,name: .zero)
    }
    
    static var random: NewsSourceDataModel {
        NewsSourceDataModel(id: .random, name: .random)
    }
    
}
