//
//  BaseViewModel.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

class BaseViewModel {
    
    // MARK: - BaseViewModelProtocol Properties
    var onShowError: ErrorBlock?
    
    // MARK: - BaseViewModelProtocol Methods
    func viewDidLoad() {}
    func viewWillAppear() {}
    func viewDidAppear() {}
    func viewDidDisappear() {}
    func viewWillDisappear() {}
    func applyLocalization() {}
}

// MARK: - BaseViewModelProtocol
extension BaseViewModel: BaseViewModelProtocol {}
