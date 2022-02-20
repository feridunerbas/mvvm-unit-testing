//
//  Int+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Foundation

extension Int {
    
    static var zero: Int {
        0
    }
    
    static var random: Int {
        Int.random(in: Int.min..<Int.max)
    }
    
}
