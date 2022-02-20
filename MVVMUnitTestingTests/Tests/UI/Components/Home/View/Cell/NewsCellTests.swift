//
//  NewsCellTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Foundation
import XCTest
@testable import MVVMUnitTesting

class NewsCellTests: XCTestCase {
    var spy: FakeNewsCellViewModel!
    var sut: NewsCell!
    
    override func setUp() {
        super.setUp()
        spy = FakeNewsCellViewModel()
        sut = FakeTableViewDataSource.dequeue()
    }
    
    override func tearDown() {
        super.tearDown()
        spy = nil
        sut = nil
    }
}

extension NewsCellTests {
    
    func testSome() {
        // Given a viewModel filled with random news data
        let news = News.random
        spy.fakeNews = news
        spy.fakeTitle = news.title
        spy.fakeDescription = news.description
        // When cell bound with viewModel
        sut.bind(viewModel: spy)
        // Then cell must apply view with viewmodel values
        XCTAssertEqual(sut.titleLabel.text, news.title)
        XCTAssertEqual(sut.descriptionLabel.text, news.description)
        XCTAssertNil(sut.newsImageView?.image)
        
    }
    
}
