//
//  Home+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver {
    
    static func registerHomeDependencies() {
        register {
            R.storyboard.home.homeViewController()!
        }
        register {
            HomeViewModel()
        }.implements(HomeViewModelProtocol.self)
    }
    
}
