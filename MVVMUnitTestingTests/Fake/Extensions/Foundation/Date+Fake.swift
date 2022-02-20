//
//  Date+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Foundation

extension Date {
    
    static var zero: Date {
        Date(timeIntervalSince1970: 0)
    }
    
    static var random: Date {
        let since = Date().timeIntervalSince1970
        let rand = Double.random(in: 0..<since)
        return Date(timeIntervalSince1970: rand)
    }
    
}
