//
//  BaseViewModelProtocol.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

typealias VoidBlock = () -> Void
typealias ErrorBlock = (Error) -> Void

protocol BaseViewModelProtocol: AnyObject {
    
    // MARK: - Properties
    var onShowError: ErrorBlock? { get set }
    
    // MARK: - Functions
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewDidDisappear()
    func viewWillDisappear()
    func applyLocalization()
    
}

// MARK: - Default Methods
extension BaseViewModelProtocol {
    
    func showError(error: Error) {
        onShowError?(error)
    }
    
}
