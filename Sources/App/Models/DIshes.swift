//
//  DIshes.swift
//  App
//
//  Created by Daniel Reyes Sánchez on 2/25/19.
//

import Foundation
import FluentSQLite
import Vapor

final class Dish:Content {
    var id:Int?
    var name:String
    var price:Double
    var imageURL:String
    
    init(name:String, price:Double, imageURL:String) {
        self.name = name
        self.price = price
        self.imageURL = imageURL
    }
}


extension Dish: SQLiteModel {
    static let entity: String = "dishesDemo"
    
}

extension Dish: Migration, Parameter {
    
}
