//
//  URL+ImageResource.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

extension URL {
    
    func asImageResource() -> ImageResource {
        .url(url: self)
    }
    
}
