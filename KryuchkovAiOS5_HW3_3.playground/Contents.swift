import UIKit

//ЗАДАЧА №1


//ЗАДАЧА №2


//ЗАДАЧА №3
print("\nЗАДАЧА №3\n")

class Parent {
    func about() {
        print("About Parent")
    }
}

class Child: Parent {
    override func about() {
        super.about()
        
        print("About Child")
    }
}

// Проверка
let childOne = Child()
childOne.about()
