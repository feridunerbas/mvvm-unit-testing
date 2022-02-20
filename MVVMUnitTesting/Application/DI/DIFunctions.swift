//
//  DIFunctions.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

func resolve<T>(args: Any?) -> T {
    Resolver.resolve(args: args)
}

func resolve<T>() -> T {
    Resolver.resolve()
}

func resolve<T>(_: T.Type) -> T {
    Resolver.resolve()
}
