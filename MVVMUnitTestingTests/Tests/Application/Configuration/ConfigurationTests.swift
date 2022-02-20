//
//  ConfigurationTests.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import XCTest
@testable import MVVMUnitTesting

class ConfigurationTests: XCTestCase {
    
    // Subject under test
    var sut: Configuration!
    
}

extension ConfigurationTests {
    
    func testLoadsProperties() {
        let path = R.file.fakeConfigurationPlist.path()!
        sut = Configuration(configurationPlistPath: path)
        XCTAssertEqual(sut.apiBaseUrl, "valueOf-apiBaseUrl")
        XCTAssertEqual(sut.newsFeedApiKey, "valueOf-newsFeedApiKey")
        XCTAssertEqual(sut.apiDateFormat, "valueOf-apiDateFormat")
    }
    
}
