//
//  BaseRemoteRepository.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

class BaseRemoteRepository<T> {
    
    let urls: T
    
    init() {
        urls = resolve()
    }
    
    init(apiUrls: T) {
        urls = apiUrls
    }
    
}
