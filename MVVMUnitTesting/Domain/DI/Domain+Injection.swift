//
//  Domain+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver {
    
    static func registerDomainDependencies() {
        register { GetNewsUseCase() }
            .implements(GetNews.self)
    }
    
}
