//
//  FakeGetNewsUseCase.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

class FakeGetNewsUseCase {
    var fakeGetNewsResult: GetNewsResult!
}

extension FakeGetNewsUseCase: GetNews {
    
    func callAsFunction(inputs: GetNewsInputs, completion: @escaping GetNewsCompletion) {
        completion(fakeGetNewsResult)
    }
    
}
