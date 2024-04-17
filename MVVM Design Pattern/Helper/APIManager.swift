//
//  APIManager.swift
//  MVVM Design Pattern
//
//  Created by Abhishek Bhardwaj on 17/04/24.
//

import UIKit

class APIManager {
    
    static let shared = APIManager()
    private init() {}
    
    func fetchProducts(completionHandler: @escaping (Result<ProductName,Error>) -> Void) {
        guard let url = URL(string: Constants.API.productURL) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data else { return }
            guard let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode else { return }
            
            do {
                let products = try JSONDecoder().decode(ProductName.self, from: data)
            } catch {
                
            }
        }.resume()
    }
}
