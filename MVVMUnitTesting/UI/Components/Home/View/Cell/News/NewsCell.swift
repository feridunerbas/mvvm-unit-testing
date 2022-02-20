//
//  NewsCell.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import UIKit

class NewsCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
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
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        newsImageView.setImage(withResource: viewModel.imageResource)
    }
    
}
