//
//  Endpoints.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

class Endpoints {
    
    // MARK: - Private Properties
    private let baseUrl: String
    
    // MARK: - Init
    init() {
        let configuration: ConfigurationProtocol = resolve()
        baseUrl = configuration.apiBaseUrl
    }
    
    init(baseUrl url: String) {
        baseUrl = url
    }
    
    // MARK: - EndpointsProtocol Properties
    lazy var newsApiURLs = makeNewsApiURLs()
    
}

// MARK: - EndpointsProtocol
extension Endpoints: EndpointsProtocol {}

// MARK: - Privte Methods
private extension Endpoints {
    
    func fullURL(relativeURL: String) -> URL? {
        URL(string: "\(baseUrl)\(relativeURL)")
    }
}

// MARK: - NewsApiURLs
private extension Endpoints {
    
    func makeNewsApiURLs() -> NewsApiURLs {
        NewsApiURLs(allURL: fullURL(relativeURL: "everything"))
    }
    
}
