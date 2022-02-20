//
//  HomeViewModelProtocol.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

protocol HomeViewModelProtocol: BaseViewModelProtocol {
    
    // MARK: - Properties
    var reloadNews: VoidBlock? { get set }
    var sections: [HomeTableSection] { get }
    
    // MARK: - Functions
    func selectedItem(atIndexPath indexPath: IndexPath)
    
}
