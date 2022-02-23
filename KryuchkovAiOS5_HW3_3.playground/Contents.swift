import UIKit

//ЗАДАЧА №1

protocol SportGameProtocol {

    //Геттер - узнать результат игры
    var getResult:String {get}

    // Сеттер - сделать ставку на игру
    var userResult: String {get set}
}

// Класс спортивная игра
class SportGame: SportGameProtocol {
    
    var getResult:String
    var userResult: String
        
    // Публичный метод - купить билет
    public func buyTicket() {
    }
    
    // Приватный метод - собственно сама игра
    private func playGame() -> String {
        return getResult
    }
    
    // Internal функция проверки соответствия результата и ставки игрока
    func checkUserResult(userResult: String, getResult: String) -> Bool {
        // внутренняя переменная внутри функции
        var checkResult: Bool
        
        if userResult == getResult {
            checkResult = true
        } else{
            checkResult = false
        }
        return checkResult
    }
    
    init(userResult: String, getResult: String) {
        self.userResult = userResult
        self.getResult = getResult
    }
}


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
