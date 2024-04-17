//
//  Product.swift
//  MVVM Design Pattern
//
//  Created by Abhishek Bhardwaj on 17/04/24.
//

import Foundation

struct Product {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String 
    let rating: Rating
    
}

struct Rating {
    let rate: Double
    let count: Int
}

typealias ProductName = [Product]
