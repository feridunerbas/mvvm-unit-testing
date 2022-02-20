//
//  NewsRepository.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

protocol NewsRepository {
    func getNews(request: GetNewsRequest, completion: @escaping GetNewsDataCompletion)
}
