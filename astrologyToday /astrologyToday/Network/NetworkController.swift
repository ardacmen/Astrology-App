//
//  NetworkController.swift
//  invoiCase
//
//  Created by Arda Çimen on 10.03.2023.
//

import Foundation
import Alamofire




class NetworkController {
    
    static let shared = NetworkController()
    
    func request<T: Decodable>(_ url: String, model: T.Type, completion: @escaping (DataResponse<T, AFError>) -> Void) {
        AF.request(url).validate().responseDecodable(of: T.self) { response in
            completion(response)
        }
    }
    
}






