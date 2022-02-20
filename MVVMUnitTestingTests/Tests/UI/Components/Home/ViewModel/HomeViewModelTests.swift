//
//  HomeViewModelTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import XCTest
@testable import MVVMUnitTesting
import Resolver

class HomeViewModelTests: XCTestCase {
    
    var sut: HomeViewModel!
    var getNewsSpy: FakeGetNewsUseCase!
    
    override func setUp() {
        super.setUp()
        getNewsSpy = FakeGetNewsUseCase()
        Resolver.fakes.register {
            self.getNewsSpy
        }.implements(GetNews.self)
        sut = Resolver.fakes.optional()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
        getNewsSpy = nil
    }
    
}

extension HomeViewModelTests {
    
    func testLoadsData() {
        let expectation = XCTestExpectation()
        // Given any size of news collection
        let news = News.randomCollection
        getNewsSpy.fakeGetNewsResult = .success(news)
        sut.reloadNews = {
            // Then ViewModel should produce cells for every news object
            XCTAssertEqual(self.sut.sections.count, 1)
            let first = self.sut.sections.first!
            XCTAssertEqual(first.items.count, news.count)
            expectation.fulfill()
        }
        // When View is loaded
        sut.viewDidLoad()
        wait(for: [expectation], timeout: 1)
    }
    
    func testSignalsShowError() {
        let expectation = XCTestExpectation()
        // Given an error object
        let responseError = ResponseError.service(code: "code", message: "message")
        getNewsSpy.fakeGetNewsResult = .failure(responseError)
        sut.onShowError = { error in
            // Then ViewModel should produce error
            XCTAssertTrue(error is ResponseError)
            if case ResponseError.service(let code, let message) = error {
                XCTAssertEqual(code, "code")
                XCTAssertEqual(message, "message")
                expectation.fulfill()
            } else {
                XCTFail()
            }
        }
        
        // When View is loaded
        sut.viewDidLoad()
        wait(for: [expectation], timeout: 1)
    }
    
}
