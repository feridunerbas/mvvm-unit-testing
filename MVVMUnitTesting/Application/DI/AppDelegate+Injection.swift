//
//  AppDelegate+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        registerApplication()
        registerDataDependencies()
        registerDomainDependencies()
        registerUIDependencies()
    }
    
}
