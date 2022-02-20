//
//  NewsCellViewModelTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Foundation
import XCTest
@testable import MVVMUnitTesting

class NewsCellViewModelTests: XCTestCase {
    var sut: NewsCellViewModel!
}

extension NewsCellViewModelTests {
    
    func testLoadsModelData() {
        // Given a random News data
        let news = News.random
        // When NewsCellViewModel initialized
        sut = NewsCellViewModel(news: news)
        // Then News data should be available in NewsCellViewModel
        if case .url(let url) = sut.imageResource {
            XCTAssertEqual(news.imageURL, url)
        } else {
            XCTFail()
        }
        XCTAssertEqual(sut.title, news.title)
        XCTAssertEqual(sut.description, news.description)
    }

}
