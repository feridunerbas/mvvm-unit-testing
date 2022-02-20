//
//  URL+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Foundation

extension URL {
        
    static var zero: URL {
        let baseUrl = "https://www.MVVMUnitTestingTests.com/"
        return URL(string: baseUrl)!
    }
    
    static var random: URL {
        let baseUrl = "https://www.MVVMUnitTestingTests.com/"
        let urlString = baseUrl + "\(Int.random)"
        return URL(string: urlString)!
    }
    
}
