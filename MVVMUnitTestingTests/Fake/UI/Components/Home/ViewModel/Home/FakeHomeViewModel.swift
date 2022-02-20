//
//  FakeHomeViewModel.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

typealias IndexPathBlock = (IndexPath) -> Void

class FakeHomeViewModel: FakeBaseViewModel {
    
    // MARK: - HomeViewModelProtocol Properties
    var reloadNews: VoidBlock?
    var sections: [HomeTableSection] = []
    
    // MARK: - Fake Properties
    var onSelectedItem: IndexPathBlock?
}

extension FakeHomeViewModel: HomeViewModelProtocol {
  
    func selectedItem(atIndexPath indexPath: IndexPath) {
        onSelectedItem?(indexPath)
    }
    
}
