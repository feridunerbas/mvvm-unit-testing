//
//  GetNewsUseCaseTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import XCTest
@testable import MVVMUnitTesting
import Resolver

class GetNewsUseCaseTests: XCTestCase {
    
    var sut: GetNewsUseCase!
    var spy: FakeNewsRepository!
    
    override func setUp() {
        super.setUp()
        spy = FakeNewsRepository()
        Resolver.fakes.register {
            self.spy
        }.implements(NewsRepository.self)
        sut = Resolver.fakes.optional()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
        spy = nil
    }
    
}

extension GetNewsUseCaseTests {
    
    func testCreatesNewsObjectsForAnyResponse() {
        let expectation = XCTestExpectation()
        // Given any filled response from api
        let randomResponse: GetNewsResponse = .random
        spy.getNewsResult = .success(randomResponse)
        // When request is called
        sut!(inputs: .zero) { result in
            switch result {
            case .success(let news):
                // Then response should be mapped to news models
                XCTAssertEqual(randomResponse.news?.count, news.count)
                expectation.fulfill()
            case .failure:
                break
            }
        }
        wait(for: [expectation], timeout: 1)
    }
    
    func mapsToErrorWhenApiReturnsError() {
        
        let expectation = XCTestExpectation()
        // Given any filled response from api
        var errorResponse: GetNewsResponse = .random
        errorResponse.status = "error"
        errorResponse.message = "Something went wrong"
        spy.getNewsResult = .success(errorResponse)
        // When request is called
        sut!(inputs: .zero) { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                // Then response should be mapped to ResponseError with api message
                XCTAssertTrue(error is ResponseError)
                XCTAssertEqual(error.localizedDescription, errorResponse.message)
                expectation.fulfill()
            }
        }
        wait(for: [expectation], timeout: 1)
    }
    
}
