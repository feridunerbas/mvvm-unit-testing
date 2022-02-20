//
//  FakeBaseViewModel.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

class FakeBaseViewModel {
    
    // MARK: - BaseViewModelProtocol Properties
    var onShowError: ErrorBlock?
    
    // MARK: - Observe methods
    var onViewDidLoad: VoidBlock?
    var onViewWillAppear: VoidBlock?
    var onViewDidAppear: VoidBlock?
    var onViewDidDisappear: VoidBlock?
    var onViewWillDisappear: VoidBlock?
    var onApplyLocalization: VoidBlock?
    
}

extension FakeBaseViewModel: BaseViewModelProtocol {
    
    func viewDidLoad() {
        onViewDidLoad?()
    }
    
    func viewWillAppear() {
        onViewWillAppear?()
    }
    
    func viewDidAppear() {
        onViewDidAppear?()
    }
    
    func viewDidDisappear() {
        onViewDidDisappear?()
    }
    
    func viewWillDisappear() {
        onViewWillDisappear?()
    }
    
    func applyLocalization() {
        onApplyLocalization?()
    }
    
    
}
