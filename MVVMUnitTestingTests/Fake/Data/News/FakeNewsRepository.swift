//
//  FakeNewsRepository.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

struct FakeNewsRepository {
    
    // MARK: - Fake data
    let getNewsResult: GetNewsDataResult!
    
}

// MARK: - NewsRepository
extension FakeNewsRepository: NewsRepository {
    
    func getNews(request: GetNewsRequest, completion: @escaping GetNewsDataCompletion) {
        completion(getNewsResult)
    }
    
}
