//
//  GetNews.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

typealias GetNewsResult = Result<[News], Error>
typealias GetNewsCompletion = (GetNewsResult) -> Void

protocol GetNews {
    func callAsFunction(inputs: GetNewsInputs, completion: @escaping GetNewsCompletion)
}
