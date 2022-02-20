//
//  ConfigurationProtocol.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

protocol ConfigurationProtocol {
    var newsFeedApiKey: String { get }
    var apiBaseUrl: String { get }
}
