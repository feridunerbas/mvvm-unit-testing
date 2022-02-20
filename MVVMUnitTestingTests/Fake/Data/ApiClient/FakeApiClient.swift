//
//  FakeApiClient.swift
//  MVVMUnitTestingTests
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
@testable import MVVMUnitTesting

typealias DataResult = Result<Data, Error>

class FakeApiClient {
    
    //MARK: - Fake Properties
    var fakeResult: DataResult!
    
}

// MARK: - Public Methods
extension FakeApiClient {
    
    func responseFile(atPath path: String) {
        do {
            fakeResult = .success(
                try Data(contentsOf: URL(fileURLWithPath: path))
            )
        } catch {
            fakeResult = .failure(error)
        }
    }
    
}


extension FakeApiClient: APIClient {
    
    func makeRequest<T>(request: JSONRequest, completion: @escaping DecodableCompletion<T>) where T : Decodable {
        
        switch fakeResult {
        case .success(let data):
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(.success(result))
            } catch let decodingError {
                completion(.failure(decodingError))
            }
        case .failure(let error):
            completion(.failure(error))
        default:
            preconditionFailure("fakeResult should be present to fake responses")
        }
       
    }
    
}
