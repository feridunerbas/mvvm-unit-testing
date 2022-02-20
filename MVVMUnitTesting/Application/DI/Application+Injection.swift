//
//  Application+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver {
    
    static func registerApplication() {
        register {
            Configuration()
        }.implements(ConfigurationProtocol.self)
    }
    
}
