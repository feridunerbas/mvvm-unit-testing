//
//  ApiClient+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver {
    
    static func registerApiClient() {
        register {
            AlamofireAPIClient()
        }.implements(APIClient.self)
    }
    
}
