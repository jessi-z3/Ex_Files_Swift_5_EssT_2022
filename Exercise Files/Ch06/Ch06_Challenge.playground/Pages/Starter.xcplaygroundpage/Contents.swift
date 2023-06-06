/*:
 # Chapter Challenge: Inventory Management
 ---
 
 ### Tasks
 1. Create a class called **Item** and declare properties for **name**, **price**
 2. Declare a default initializer and set the instance properties
 3. Create a struct called **BonusEffect** and declare an integer property named **bonus**
 4. Add an optional **BonusEffect** property to **Item** named **secret**
 5. Create a new class called **Inventory** with an Items array property named **storedItems**
 6. Declare a default initializer that takes in an array of Items and assigns them to **storedItems**
 7. Create a **BonusEffect** and two **Ite** instances and assign the bonus effect as one items **secret**
 8. Create an **Inventory** instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items **bonus** value
 
 [Previous Topic](@previous)
 
 */
// 1
class Item {
    var name: String
    var price: Double
    var secret: BonusEffect?
    
    init(name:String, price:Double, secret:BonusEffect?) {
        self.name = name
        self.price = price
        self.secret = secret
    }
}
// 2

// 3
struct BonusEffect {
    var bonus: Int
}
// 4

// 5
class Inventory {
    var storedItems = [Item]()
    
    init(storedItems:[Item]){
        self.storedItems = storedItems
    }
}
// 6

// 7
var threeExtraPoints = BonusEffect(bonus: 3)
var superSword = Item(name: "Super Sword", price: 23.50, secret: threeExtraPoints)
var mass = Item(name: "Mass", price: 50, secret: nil)
// 8
var store = Inventory(storedItems: [mass,superSword])

if let hidden = superSword.secret?.bonus{
    print("\(superSword.name) has a secret bonus of \(superSword.secret!.bonus) when used.")
}else{
    print("The queried item has no secret effect.")
}
