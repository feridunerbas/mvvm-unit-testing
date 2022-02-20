//
//  Configuration.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

class Configuration {
    
    private let dictionary: NSMutableDictionary = {
        let filePath = R.file.configurationPlist.path()!
        return NSMutableDictionary(contentsOfFile: filePath)!
    }()

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
