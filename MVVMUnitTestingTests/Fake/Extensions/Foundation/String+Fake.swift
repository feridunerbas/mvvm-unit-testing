//
//  String+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

extension String {
    
    private static let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt justo tellus, quis faucibus augue sodales eu. Vestibulum molestie sem ex, ut mollis tortor congue at."
    
    static var zero: String {
        ""
    }
    
    static var random: String {
        let count = Int.random(in: 0..<loremIpsum.count)
        let prefix = loremIpsum.prefix(count)
        return String(prefix)
    }
    
}
