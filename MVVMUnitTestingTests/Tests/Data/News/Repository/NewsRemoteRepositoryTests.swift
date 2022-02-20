//
//  NewsRemoteRepositoryTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import XCTest
@testable import MVVMUnitTesting
import Resolver

class NewsRemoteRepositoryTests: XCTestCase {
    
    var sut: NewsRemoteRepository!
    var spy: FakeApiClient!
    
    override func setUp() {
        super.setUp()
        spy = FakeApiClient()
        Resolver.fakes.register {
            self.spy
        }.implements(APIClient.self)
        sut = Resolver.fakes.optional()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
        spy = nil
    }
}

// MARK: - testHandlesEmptyData
extension NewsRemoteRepositoryTests {
    
    func testHandlesEmptyData() {
        let expectation = XCTestExpectation()
        // Given an unexpected(empty) data response
        spy.fakeResult = .success(Data())
        // When getNews method called
        sut.getNews(request: .zero) { result in
            switch result {
            case .success:
                break
            case .failure:
                // Then repository should response with error
                expectation.fulfill()
            }
        }
        wait(for: [expectation], timeout: 1)
    }
}

// MARK: - testHandlesGoodResponse
extension NewsRemoteRepositoryTests {
    
    func testHandlesGoodResponse() {
        let expectation = XCTestExpectation()
        // Given a json response consists of 2 News items
        let filePath = R.file.mockNewsGoodResponseWith2ItemsJson.path()!
        spy.responseFile(atPath: filePath)
        // When getNews method called
        sut.getNews(request: .zero) { result in
            switch result {
            case .success(let response):
                // Then response should be mapped to data models
                XCTAssertEqual(response.news?.count, 2)
                let first = response.news?.first
                XCTAssertNotNil(first?.source)
                XCTAssertNotNil(first?.author)
                XCTAssertNotNil(first?.title)
                XCTAssertNotNil(first?.url)
                XCTAssertNotNil(first?.urlToImage)
                XCTAssertNotNil(first?.publishedAt)
                XCTAssertNotNil(first?.content)
                XCTAssertNil(first?.source?.id)
                XCTAssertNotNil(first?.source?.name)
                expectation.fulfill()
            case .failure:
                break
            }
        }
        wait(for: [expectation], timeout: 1)
     
    }
}

// MARK: - testHandlesErrorResponse
extension NewsRemoteRepositoryTests {
    
    func testHandlesErrorResponse() {
        let expectation = XCTestExpectation()
        // Given a json response of api Error
        let filePath = R.file.mockedNewsErrorResponseJson.path()!
        spy.responseFile(atPath: filePath)
        // When getNews method called
        sut.getNews(request: .zero) { result in
            switch result {
            case .success(let response):
                // Then response should fill error related fields
                XCTAssertNil(response.news)
                XCTAssertNotNil(response.code)
                XCTAssertNotNil(response.status)
                XCTAssertNotNil(response.message)
                expectation.fulfill()
            case .failure:
                break
            }
        }
        wait(for: [expectation], timeout: 1)
    }
}
