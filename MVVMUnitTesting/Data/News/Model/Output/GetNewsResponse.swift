//
//  GetNewsResponse.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

struct GetNewsResponse: Response {
    
    // MARK: - GetNewsResponse Properties
    let news: [NewsDataModel]?
    let totalResults: Int?
    
    // MARK: - BaseResponse Properties
    let status: String?
    let code: String?
    let message: String?
    
    enum CodingKeys: String, CodingKey {
        case news = "articles"
        case totalResults
        case status
        case code
        case message
    }
}
