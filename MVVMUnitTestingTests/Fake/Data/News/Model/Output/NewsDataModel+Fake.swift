//
//  NewsDataModel+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

@testable import MVVMUnitTesting

extension NewsDataModel {
    
    static var zero: NewsDataModel {
        NewsDataModel(source: .zero,
                      author: .zero,
                      title: .zero,
                      description: .zero,
                      url: .zero,
                      urlToImage: .zero,
                      publishedAt: .zero,
                      content: .zero)
    }
    
    static var random: NewsDataModel {
        NewsDataModel(source: .random,
                      author: .random,
                      title: .random,
                      description: .random,
                      url: .random,
                      urlToImage: .random,
                      publishedAt: .random,
                      content: .random)
    }
    
    static var randomCollection: [NewsDataModel] {
        let count = Int.random(in: 0..<10)
        return (0..<count).map { _ in
            NewsDataModel.random
        }
    }
    
    static var zeroCollection: [NewsDataModel] {
        let count = Int.random(in: 0..<10)
        return (0..<count).map { _ in
            NewsDataModel.zero
        }
    }
    
}
