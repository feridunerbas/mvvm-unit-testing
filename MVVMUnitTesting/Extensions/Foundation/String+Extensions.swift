//
//  String+Extensions.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

// MARK: - To URL
extension String {
    
    func asURL() -> URL? {
        URL(string: self)
    }
    
}

// MARK: - To Date
extension String {
    
    func asDate(withFormat dateFormat: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.date(from: self)
    }
    
}
