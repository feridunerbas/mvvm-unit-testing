//
//  NewsCellViewModel.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

class NewsCellViewModel {
    
    var model: News
    var imageResource: ImageResource?
    var title: String?
    var description: String?
    
    // MARK: - Init
    init(news: News) {
        imageResource = news.imageURL?.asImageResource()
        title = news.title
        description = news.description
        model = news
    }
}

// MARK: - NewsCellViewModelProtocol
extension NewsCellViewModel: NewsCellViewModelProtocol {}
