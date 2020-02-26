
import UIKit

var str = "Hello, playground"


//условные операторы
//if

var firstItem = 1
var secondItem = 1

if firstItem > secondItem {
    print(">")
} else {
    if firstItem < secondItem {
        print("<")
    } else {
        print("=")
    }
}

var thirdItem = 3
var fourthItem = 4
fourthItem.words


// AND - &&
if (firstItem == secondItem) && (thirdItem < fourthItem) {
    print("Yes")
}

//OR - ||
if (firstItem == secondItem) || (thirdItem < fourthItem) {
    print("Yes")
}

//guard с прерыванием
func function() {
    guard firstItem == secondItem else {
        print ("wrong value")
    return
    }
    print("true")
}
function()


//ternary operator

let constantBoolean = (firstItem == secondItem) ? true : false
//= (firstItem == secondItem) - true
//!= (firstItem == secondItem) - false
let constantInt = (firstItem == secondItem) ? 10 : 20
let constantInt2 = (firstItem == secondItem) ? print ("1") : print ("2")


//switch

var booleanVarForSwitch = firstItem == secondItem

switch booleanVarForSwitch {
case true:
    print("true")
default:
//case false:
    print("false")
}

var switchInteger = 10
switch switchInteger{
case 1:
    print("1")
case 5:
    print("5")
case 10:
    print("10")
    fallthrough
//если case выполняется, то прерывается выполнение кода,
//    fallthrough - выполняет код ниже
//break -прерывает исполнение кода ниже
default:
    print("default action")
}


//optional - enum, который может принимать 2 значения: - value(), - nill
//optional обозн знаком ?


var optionalInt: Int?

func printOptional(value: Int){
    print(value)
}
//printOptional(value: optional<#T##Int#>)
//unwrapping
//if let
if let nonOptional = optionalInt {
    printOptional
    (nonOptional)
} else {
//    nonoptional
}

//guard let
optionalInt = 11
func guardlet() {
    guard let nonOptional = optionalInt else {
        return
    }
    nonOptional
}


//optional chaining - связка выполняется if optional has value

optionalInt?.distance(to: 100)

//nil - coalescing operator

print(optionalInt ?? "there is nil")
let nonOptional2 = optionalInt ?? 111


//force(unconditional) unwrap - ! - можно использовать только во время работы, не в production!!!
let nonOptionalForced = optionalInt!


//Struct - value type - значение; provided initializer; no inheritance; no deinit; can conform protocols
//Class - reference type - ссылка; no initializer, можно не создавать, если одна переменная и она optional; can inherit; has deinit; can conform protocols
//struct ParentStruct {
//
//}
protocol GenericProtocol {
    var genericProperty: Int? { get set }
    
}
//структ не наследует родительские свойства, но может соответствовать протоколу

struct CustomStruct: GenericProtocol {
    var genericProperty: Int?
    
    var firstVariable: Int
}
let myStructInstance = CustomStruct(genericProperty: 1, firstVariable: 1)

class CustomClass {
    var firstVariable: Int?
}
//let myClassInstance = CustomClass()
class Vehicle {
    let canMove = true
}

class Car: Vehicle, GenericProtocol {
    var genericProperty: Int?

    var color: Int
    var trunk: String?
    init(inputColor: Int) {
        color = inputColor
    }

 
}

let myCar = Car(inputColor: 999999)
myCar.color
myCar.trunk
myCar.canMove
//print(myCar is Car)
//print(myCar is Vehicle)
myCar.genericProperty = 10000000
var yourCar = myCar
yourCar.genericProperty
yourCar = Car(inputColor: 123)
yourCar.genericProperty = 0
myCar.genericProperty



// Home work _Lesson3


// 1. Создать 2 константы типа Int, затем сравнить их значения и вывести в консоль результат сравнения в виде: "const1 > const2".

let const1 = 20
let const2 = 10

if const1 < const2 {
    print("const1 < const2")
} else
    if const1 == const2 {
        print("const1 = const2")
    } else
        if const1 > const2 {
        print("const1 > const2")
        }



// 2. Создать несколько переменных и вывести в консоль результат их сложения.

var firstVar = 1
var secondVar = 10
var thirdVar = 9

if firstVar > secondVar {
    print(firstVar+secondVar)
} else {print("no result")}

if secondVar > thirdVar {
    print(secondVar+thirdVar)
} else {print("no result")}


// 3. Составить алгоритм увеличения всех трех ранее созданных переменных на 5,если среди них есть хотя бы две равные. В противном случае выдать ответ «равных нет».


if (firstVar == secondVar) || (secondVar == thirdVar)
{firstVar+5
secondVar+5
thirdVar+5 } else {
    print("равных нет")
}

// 4. Создать Optional-переменнтую, затем проверить ее на nil: если есть значение - вывести его на экран, если нет - вывести на экран фразу "empty "
var varOpt: Int? = 3
if varOpt != nil {
    print (varOpt!)
} else {
    print ("empty")
}

var varOpt2: Int?
if varOpt2 != nil {
    print (varOpt2!)
} else {
    print ("empty")
}



