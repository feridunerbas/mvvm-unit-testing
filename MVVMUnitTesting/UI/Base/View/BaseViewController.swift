//
//  BaseViewController.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import UIKit

class BaseViewController<T>: UIViewController {
    
    // MARK: - Injected
    private(set) lazy var viewModel: T = resolve()
    
}
