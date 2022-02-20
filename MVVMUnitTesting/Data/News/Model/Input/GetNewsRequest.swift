//
//  GetNewsRequest.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

struct GetNewsRequest: Encodable {
    
    let keyword: String
    
    enum CodingKeys: String, CodingKey {
        case keyword = "q"
    }
}
