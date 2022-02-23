import UIKit

//ЗАДАЧА №1


//ЗАДАЧА №2
print("\nЗАДАЧА №2\n")

class testOverload {
    
    func printValueType(_ value: Int) {
        print("Функция выводит переменную типа - \(type(of: value))")
    }
    
    func printValueType(_ value: String) {
        print("Функция выводит переменную типа - \(type(of: value))")
    }
    
    func printValueType(_ value: Bool) {
        print("Функция выводит переменную типа - \(type(of: value))")
    }
}

let testValue = testOverload()
testValue.printValueType(5)
testValue.printValueType("Тест")
testValue.printValueType(true)



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
