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
    
    // MARK: - Computed
    private var baseViewModel: BaseViewModelProtocol? { viewModel as? BaseViewModelProtocol }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        baseViewModel?.viewDidLoad()
        bindViewModel()
        subscribeViewModel()
        applyLocalization()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        baseViewModel?.viewWillAppear()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        baseViewModel?.viewDidAppear()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        baseViewModel?.viewWillDisappear()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        baseViewModel?.viewDidDisappear()
    }
    
    // MARK: - Public Methods
    func applyLocalization() {}
    
    func bindViewModel() {}
    
    func subscribeViewModel() {
        baseViewModel?.onShowError = { [weak self] error in
            self?.showError(error: error)
        }
    }
    
    func showError(error: Error) {
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}
