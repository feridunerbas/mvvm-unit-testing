//
//  HomeViewModel.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

class HomeViewModel: BaseViewModel {
    
    // MARK: - Injected
    @Injected var getNews: GetNews
    
    // MARK: - HomeViewModelProtocol Properties
    var reloadNews: VoidBlock?
    var itemViewModels: [HomeTableItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - Private Methods
private extension HomeViewModel {
    
    func loadData() {
        let inputs = GetNewsInputs(keyword: "Madrid")
        getNews(inputs: inputs) { [weak self] result in
            switch result {
            case .success(let newsCollection):
                self?.handle(getNewsSuccess: newsCollection)
            case .failure(let error):
                self?.handle(getNewsError: error)
            }
        }
    }
    
    func handle(getNewsSuccess newsCollection: [News]) {
        itemViewModels = newsCollection.map {
            .regular(cellViewModel: NewsCellViewModel(news: $0))
        }
    }
    
    func handle(getNewsError error: Error) {
        
    }
    
}

// MARK: - HomeViewModelProtocol
extension HomeViewModel: HomeViewModelProtocol {
    
    func selectedItem(atIndexPath indexPath: IndexPath) {
        
    }
    
}
