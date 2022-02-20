//
//  EndpointsTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import XCTest
@testable import MVVMUnitTesting

class EndpointsTests: XCTestCase {
    
    // Subject under test
    var sut: Endpoints!
    
}

// MARK: - testIncludesBaseUrl
extension EndpointsTests {
    
    func testIncludesBaseUrl() {
        // Given any base url
        let baseUrlString = "https://sample-endpoint.sample/"
        // When Endpoints initialized with a baseUrl
        sut = Endpoints(baseUrl: baseUrlString)
        let allNewsURL = sut.newsApiURLs.allURL
        // Then allNewsURL should start with provided base url
        XCTAssertTrue(
            allNewsURL?.absoluteString.starts(with: baseUrlString) == true
        )
        
    }
    
}
