//
//  Home+Injection.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

extension Resolver {
    
    static func registerHomeDependencies() {
        register { _ -> HomeNavigationController in
            let homeViewController: HomeViewController = resolve()
            return HomeNavigationController.init(rootViewController: homeViewController)
        }
        register {
            R.storyboard.home.homeViewController()!
        }
        register {
            HomeViewModel()
        }.implements(HomeViewModelProtocol.self)
    }
    
}
