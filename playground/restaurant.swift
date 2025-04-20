class Restaurant { 
    var name: String 
    var typeOfFood: String
    var numberOfOrders: Int

    init (name: String, typeOfFood: String) {
        self.name = name
        self.typeOfFood = typeOfFood
        self.numberOfOrders = 0
    }

    func receiveOrder() {
        self.numberOfOrders += 1
    }

    func calcTotalOrders() -> Int{
        let orders: Int = 35
        return orders * self.numberOfOrders
    }

}


var restaurant1 = Restaurant(name: "Pizzaria", typeOfFood: "Pizza")
var restaurant2 = Restaurant(name: "Sushi", typeOfFood: "Sushi")        


restaurant1.receiveOrder()
restaurant1.receiveOrder()
restaurant1.receiveOrder()


restaurant2.receiveOrder()
restaurant2.receiveOrder()
restaurant2.receiveOrder()
restaurant2.receiveOrder()
restaurant2.receiveOrder()

print("O restaurante \(restaurant1.name) fez R$ \(restaurant1.calcTotalOrders()) em pedidos.")
print("O restaurante \(restaurant2.name) fez R$ \(restaurant2.calcTotalOrders()) em pedidos.")