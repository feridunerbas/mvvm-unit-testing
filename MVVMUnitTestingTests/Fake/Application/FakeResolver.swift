//
//  FakeResolver.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

import Resolver

extension Resolver {
    
    static var fakes: Resolver = {
        let fakes = Resolver(child: main)
        root = fakes
        return fakes
    }()
    
    static func setupFaking(_ fakingBlock: (Resolver) -> Void) {
        fakingBlock(fakes)
        root = fakes
    }
    
    static func resetFakes() {
        fakes = Resolver(child: main)
        root = fakes
    }
}
