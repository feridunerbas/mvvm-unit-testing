//
//  GetNewsResponse.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

struct GetNewsResponse: Decodable {
    let status: String?
    let totalResults: Int?
    let news: [NewsDataModel]?
}
