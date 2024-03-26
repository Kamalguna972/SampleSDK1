//
//  alamofire.swift
//  SampleSDK
//
//  Created by apple on 26/03/24.
//

import Foundation
import Alamofire
public class mysdk {
    public static func fetchData(completion: @escaping (Result<Data, Error>) -> Void) {
        AF.request("https://api.example.com/data").responseData { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
