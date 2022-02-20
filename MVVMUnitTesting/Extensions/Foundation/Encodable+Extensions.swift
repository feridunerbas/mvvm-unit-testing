//
//  Encodable+Extensions.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation

extension Encodable {
    
    func asJSONParameters() ->  [String: Any] {
        guard let encoded = try? JSONEncoder().encode(self),
        let json = try? JSONSerialization.jsonObject(with: encoded, options: []) as? [String: Any]
            else { return [:] }
        return json
    }
 
}
