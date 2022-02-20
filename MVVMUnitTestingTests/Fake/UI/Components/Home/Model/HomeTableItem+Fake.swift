//
//  HomeTableItem+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

@testable import MVVMUnitTesting

extension HomeTableItem {
    
    static var zero: HomeTableItem {
        return .regular(cellViewModel: NewsCellViewModel(news: .zero))
    }
    
    static var random: HomeTableItem {
        return .regular(cellViewModel: NewsCellViewModel(news: .random))
    }
    
    static var randomCollection: [HomeTableItem] {
        News.randomCollection.map {
            .regular(cellViewModel: NewsCellViewModel(news: $0))
        }
    }
    
    static var zeroCollection: [HomeTableItem] {
        News.zeroCollection.map {
            .regular(cellViewModel: NewsCellViewModel(news: $0))
        }
    }
    
}
