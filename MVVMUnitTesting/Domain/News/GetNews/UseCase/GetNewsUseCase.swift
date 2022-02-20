//
//  GetNewsUseCase.swift
//  MVVMUnitTesting
//
//  Created by Feridun Erbas on 20.02.2022.
//

import Resolver

class GetNewsUseCase {
    @Injected var repository: NewsRepository
    @Injected var configuration: ConfigurationProtocol
}

// MARK: - GetNewsUseCase
extension GetNewsUseCase: GetNews {
    
    func callAsFunction(inputs: GetNewsInputs, completion: @escaping GetNewsCompletion) {
        let request = inputs.asGetNewsRequest()
        repository.getNews(request: request) { [weak self] result in
            self?.handle(result: result, completion: completion)
        }
    }
    
}

// MARK: - Private Methods
private extension GetNewsUseCase {
    
    func handle(result: GetNewsDataResult, completion: @escaping GetNewsCompletion) {
        switch result.mapApiErrors() {
        case .success(let response):
            handle(response: response, completion: completion)
        case .failure(let error):
            completion(.failure(error))
        }
    }
    
    func handle(response: GetNewsResponse, completion: GetNewsCompletion) {
        let newsCollection = response.news?.map {
            $0.asNews(dateFormat: configuration.apiDateFormat)
        } ?? []
        completion(
            .success(newsCollection)
        )
    }
    
}

// MARK: - Private External Extensions
private extension GetNewsInputs {
    
    func asGetNewsRequest() -> GetNewsRequest {
        GetNewsRequest(keyword: keyword)
    }
    
}

private extension NewsDataModel {
    
    func asNews(dateFormat: String) -> News {
        News(title: title ?? "",
             author: author ?? "",
             description: description ?? "",
             content: content ?? "",
             url: url?.asURL(),
             imageURL: urlToImage?.asURL(),
             publishedAt: publishedAt?.asDate(withFormat: dateFormat) ?? Date())
    }
    
}
