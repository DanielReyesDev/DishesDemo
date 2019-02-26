import Vapor

public func routes(_ router: Router) throws {
    
    router.post(Dish.self, at: "api/addDishes") { (request, dish) -> Future<Dish> in
        
        return dish.save(on: request)
    }
}
