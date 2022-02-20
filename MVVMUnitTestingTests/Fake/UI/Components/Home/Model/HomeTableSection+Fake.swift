//
//  HomeTableSection+Fake.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

@testable import MVVMUnitTesting

extension HomeTableSection {
    
    static var zero: HomeTableSection {
        HomeTableSection(items: HomeTableItem.zeroCollection)
    }
    
    static var random: HomeTableSection {
        HomeTableSection(items: HomeTableItem.randomCollection)
    }
    
    static var randomCollection: [HomeTableSection] {
        (0..<10).map { _ in
            HomeTableSection.random
        }
    }
    
    static var zeroCollection: [HomeTableSection] {
        (0..<10).map { _ in
            HomeTableSection.zero
        }
    }
    
}
