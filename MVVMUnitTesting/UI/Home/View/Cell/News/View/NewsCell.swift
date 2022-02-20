//
//  NewsCell.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import UIKit

class NewsCell: UITableViewCell {
    
    // MARK: - Properties
    private var viewModel: NewsCellViewModelProtocol?
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        designInitialUI()
    }

}

// MARK: - UI Methhods
private extension NewsCell {
    
    func designInitialUI() {
        selectionStyle = .none
    }
    
}

// MARK: - Public Methods
extension NewsCell {
    
    func bind(viewModel: NewsCellViewModelProtocol) {
        self.viewModel = viewModel
    }
    
}
