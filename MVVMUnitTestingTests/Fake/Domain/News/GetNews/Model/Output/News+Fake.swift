//
//  News+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

@testable import MVVMUnitTesting

extension News {
    
    static var zero: News {
        News(title: .zero,
             author: .zero,
             description: .zero,
             content: .zero,
             url: .zero,
             imageURL: .zero,
             publishedAt: .zero)
    }
    
    static var random: News {
        News(title: .random,
             author: .random,
             description: .random,
             content: .random,
             url: .random,
             imageURL: .random,
             publishedAt: .random)
    }
    
    static var randomCollection: [News] {
        (0..<10).map { _ in
            News.random
        }
    }
    
    static var zeroCollection: [News] {
        (0..<10).map { _ in
            News.zero
        }
    }
}
