//
//  Data+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver {
    
    static func registerDataDependencies() {
        registerApiClient()
        register { NewsRemoteRepository() }
            .implements(NewsRepository.self)
        register { Endpoints() }
            .implements(EndpointsProtocol.self)
        register {
            resolve(EndpointsProtocol.self).newsApiURLs
        }
    }
    
}
