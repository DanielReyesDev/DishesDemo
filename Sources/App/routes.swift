import Vapor
import FluentSQLite

public func routes(_ router: Router) throws {
    
    router.post(Dish.self, at: "api/addDishes") { (request, dish) -> Future<Dish> in
        
        return dish.save(on: request)
    }
    
    router.get("api/dishes") { (request) -> Future<[Dish]> in
        return Dish.query(on: request).all()
    }
    
    router.get("api/dishes", Dish.parameter) { request -> Future<Dish> in
        return try request.parameters.next(Dish.self)
    }
    
    router.delete("api/dishes") { (request) -> Future<Dish> in
        return try request.parameters.next(Dish.self).delete(on: request)
    }
}
