//
//  Configuration.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

class Configuration {
    
    // MARK: - Properties
    private let configurationPlistPath: String
    private lazy var dictionary: NSMutableDictionary = NSMutableDictionary(contentsOfFile: configurationPlistPath)!
    
    // MARK: - Init
    init(configurationPlistPath path: String) {
        configurationPlistPath = path
    }
    
    init() {
        configurationPlistPath = R.file.configurationPlist.path()!
    }
    
}

// MARK: - Private methods
private extension Configuration {
    
    func getValue(for key: String) -> String? {
        return dictionary[key] as? String
    }
    
}

// MARK: - ConfigurationProtocol
extension Configuration: ConfigurationProtocol {
    
    var apiDateFormat: String {
        getValue(for: "apiDateFormat")!
    }
    
    var apiBaseUrl: String {
        getValue(for: "apiBaseUrl")!
    }
    
    var newsFeedApiKey: String {
        getValue(for: "newsFeedApiKey")!
    }
    
}
