//
//  NewsCellViewModelProtocol.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

protocol NewsCellViewModelProtocol: AnyObject {
    
    var model: News { get }
    var imageResource: ImageResource? { get }
    var title: String? { get }
    var description: String? { get }
    
}
