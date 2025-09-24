//
//  NetworkManager.swift
//  AppUtilities
//
//  Created by Moheed Zafar on 24/09/2025.
//

import Foundation
import Alamofire

public enum HTTPMethodType {
    case get, post, put, delete
    
    var method: HTTPMethod {
        switch self {
        case .get: return .get
        case .post: return .post
        case .put: return .put
        case .delete: return .delete
        }
    }
}

public class NetworkManager {
    public static let shared = NetworkManager()
    private init() {}
    
    @discardableResult
    public func request<T: Decodable>(
        _ url: String,
        method: HTTPMethodType = .get,
        parameters: [String: Any]? = nil,
        headers: [String: String]? = nil,
        decoder: JSONDecoder = JSONDecoder(),
        completion: @escaping (Result<T, Error>) -> Void
    ) -> DataRequest {
        
        let afHeaders = HTTPHeaders(headers ?? [:])
        
        return AF.request(url,
                          method: method.method,
                          parameters: parameters,
                          encoding: method == .get ? URLEncoding.default : JSONEncoding.default,
                          headers: afHeaders)
        .validate()
        .responseDecodable(of: T.self, decoder: decoder) { response in
            switch response.result {
            case .success(let model):
                completion(.success(model))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
