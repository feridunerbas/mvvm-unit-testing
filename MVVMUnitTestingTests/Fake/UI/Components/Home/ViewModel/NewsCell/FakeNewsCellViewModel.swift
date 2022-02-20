//
//  FakeNewsCellViewModel.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 21.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

class FakeNewsCellViewModel {
    var fakeNews: News!
    var fakeImageResource: ImageResource?
    var fakeTitle: String?
    var fakeDescription: String?
}

extension FakeNewsCellViewModel: NewsCellViewModelProtocol {
    var model: News { fakeNews }
    var imageResource: ImageResource? { fakeImageResource }
    var title: String? { fakeTitle }
    var description: String? { fakeDescription }
    
}
