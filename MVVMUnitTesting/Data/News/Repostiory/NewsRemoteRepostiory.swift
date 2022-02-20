//
//  NewsRemoteRepostiory.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Foundation
import Resolver
import Combine

typealias GetNewsDataResult = Result<GetNewsResponse, Error>
typealias GetNewsDataCompletion = (GetNewsDataResult) -> Void

class NewsRemoteRepository: BaseRemoteRepository<NewsApiURLs> {
    
    // MARK: - Injected
    @Injected var apiClient: APIClient
    
}

// MARK: - NewsRepository
extension NewsRemoteRepository: NewsRepository {
    
    func getNews(request: GetNewsRequest, completion: @escaping GetNewsDataCompletion) {
        let request = JSONRequest(url: urls.allURL,
                                  method: .get,
                                  parameters: request.asJSONParameters())
        apiClient.makeRequest(request: request, completion: completion)
    }
    
}
