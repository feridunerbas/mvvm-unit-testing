//
//  Configuration.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

struct FakeConfiguration: ConfigurationProtocol {
    var newsFeedApiKey: String
    var apiBaseUrl: String
    var apiDateFormat: String
}
