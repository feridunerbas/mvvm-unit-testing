//
//  FakeEndpoints.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

struct FakeEndpoints {
    
    // MARK: - Fake data
    var fakeNewsApiURLs: NewsApiURLs!
}

// MARK: - EndpointsProtocol
extension FakeEndpoints: EndpointsProtocol {
    
    var newsApiURLs: NewsApiURLs {
        fakeNewsApiURLs
    }
    
}
