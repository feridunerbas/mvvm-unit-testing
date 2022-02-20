//
//  Response.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

protocol Response: Decodable {
    var status: String? { get }
    var code: String? { get }
    var message: String? { get }
}
