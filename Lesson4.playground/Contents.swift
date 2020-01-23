import UIKit

var str = "Hello, playground"
 

// Lesson 4 типы колекций , функции, замыкания

//collections - Set, Array, Dictionary  - (valye type)

//Set - собирает уник. значения (куча). Хранит уник значения (2 одинак. зн. быть не может)
// Array  - набор эл-тов распол в опр порядке, у кажд эл. есть свой индекс ( начинается 1 инд. с 0)
// Dictinary -похож на массив, отличается индексацией, индексы заменяют ключи (ключ уникален - нельзя по одному ключу хранить 2 разн объекта , ключ-значение - key:value

var intArray1: Array<Int> = [] // обявили перем типа массив
var intArray2 = Array<Int>()
var intArray: [Int] = [] // массив
// [:] - dictionary




// Creating

// Declaration
var emptyInts: Array<Int> = Array() //полное имя - не предпочтительно
var emptyDoubles: [Double] = []// короткое - используем


// Modifying array Accessing Array Values

let constArray = [1,3,5,7,10]
var varArray = [1,3,5,7,10]
//получаем элемент массива
var item = constArray[1]
print(item)
let count = constArray.count // count возвр кол-во эл-тов мвсссива
var nextElement = constArray[count-1]
var iterator = 0
//for item in constArray {
//    print (constArray[iterator])
//    iterator += 1
//}

constArray.first
constArray.last



//updating elements
//если массив константа мы не можем изменить кол-во эл-тов

//constArray[1] = 0 -warning

varArray[1] = 0

// map примменяет замыкание, а не значение
//varArray.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)


//varArray.sort()
//varArray.sorted() - получаем новый массив

//adding and remove elements


var newArray =  [Int] () // [1,2,3]
newArray.append(1)
newArray.append(2)
newArray.insert(3, at: 1)


newArray.remove(at: 1)
newArray.removeAll()


//iteratings - перебор элт-ов мвссива

//for для переборв
// перебор равен кол-ву эл-тов массива
//for item in constArray{
//}

constArray.forEach { (item) in
    print(item)
}

//все эл массива одно и того же типа, и он не меняется!!!
//используем сабскриптинг [] для доступа к элементам массива



//Dictionary

//creating

//словарь мутаб - переменная
//перечисление через запятую key:valye
let constDictionary: Dictionary<String,Int> = [:]
var carProperties = [
    "color" : 123,
    "doors" : 4,
    "type" : 1
]



//проиниц пустой массив с зад типами
var car = [String:Int]()
//var car2 = Dictionary <String,Int>() - не рекоментуется такая иницивлтз

//modifying

var dictItem = carProperties["color"]
//if let nonNilItem = carProperties["color"] {
//} else {
//
//}

//add and remove
carProperties["maxSpeed"] = 100000
carProperties
carProperties.removeValue(forKey: "maxSpeed")
carProperties



// Iterating

carProperties.forEach {(key,value) in
    print(value)
}
carProperties.count


//не упорядочен коллекция, но у кажд эд есть ключ

var tuple = (integer: 1,double: 2.1,mystring: "ss")
var tupleItem1 = tuple.0
var tupleItem2 = tuple.1
var tupleItem3 = tuple.mystring

//переименотовать любой тип в любон выдуманое мной название
typealias MyCustomTupleType = (integer: Int, double: Double, mystring: String)
//var customTuple: MyCustomTupleType
//customTuple.integer = 1
//customTuple



//Set

//нет возможности обращатбся с помошью сабскрипта, проверяет есть ли искомый элемент
//creating
var customSet: Set<Int> = [1, 2, 3, 4, 5]
//customSet.count -кол-во эл в сете
customSet.count
var subSet: Set<Int> = [2, 3, 4, 7]
var inSubset = subSet.isSubset(of: customSet)
subSet.intersection(customSet)
var filtered = customSet.filter { (argument) -> Bool in
    if argument < 4 {
        return true
    } else {
        return false
    }
}
let newset = filtered.map {
    $0 * 2
}
newset
filtered

//iterating

//customSet.map { (<#Int#>) -> T in
//}



//Functions

//Void (ничего не возвращает) - Int тип возращаемого значенеия
func functionName (id index: Int, param2: Double) -> Int {
    //body of the function
    return 1
}

func color (_ red: Int? = 1, _ green:Int? = 1, _ blue: Int? = 1) -> Int? {
    guard let red = red,
    let green = green,
        let blue = blue else {
      return 0
    }
    
    return red+green+blue
}

var colorComponent: Int? = 1
let variable = functionName(id: 1, param2: 1.0)
color()
//можно писат так вместо func shortAction () -> Void {} = это  func shortAction (){}


//nested - нездо, фонкция в фкнуции используется редко



struct CustomStruct {
    
    func shortAction() {
    }
    static func InternalFunc () {
 //       shortAction ()
    }
}

var customStruktVar = CustomStruct()
customStruktVar.shortAction()
CustomStruct().shortAction()
CustomStruct.InternalFunc()

import UIKit

var color = UIColor( white: 255, alpha: 1.0)




//Closures - замыкания

//можно проинициализирвать перем или конст

//var customClosure = {
//
//}
typealias MyClosure = (Int, String) -> Void
var customClosure: (Int, String, Double) -> Void = {
    print("closure is called")
    print($0)
    print($1)
    print($2)
}
var newClosure = customClosure
newClosure(1, "Hello", 1.0)

var oneMoreClosure: MyClosure = { myInteger, myString in

}
//$ позволяет обратитбься к конткретному элементу


//My homework 4 -----------------


// Написать функцию в которой необходимо:
//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.

let newArray1: [Int] = [0, 4, 2, 6, 0]
let newArray2: [Int] = [1, 3, 4, 5]


if newArray1[0] == 0 {
    print( "first element is 0")
} else {
    print("first element is not 0 ")
}

if newArray2[0] == 0 {
    print("first element is 0")
} else {
    print("first element is not 0 ")
}


//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль
 
if newArray1.contains(3) && newArray1.contains(5){
    print("Array contain 3 and 5")
} else {
    print("Array of integers does not contain a 3 or a 5")
}
    
if newArray2.contains(3) && newArray2.contains(5){
    print("Array contain 3 and 5")
} else {
    print("Array of integers does not contain a 3 or a 5")
}


//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль

if newArray1.first == newArray1.last {
    print ("The first element and the last element of a given array of integers are equal")
} else { print ("The first element and the last element of a given array of integers are NOT equal!")
    
}

//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)

var arrayNew = [10, 12, 100]
arrayNew.append(230)
arrayNew.insert(88, at: 1)
arrayNew.remove(at: 2)
arrayNew.reverse()
print (arrayNew)

//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)


var myClothes = [
    "color" : "white",
    "size" : "4",
    "type" : "foot"
]
myClothes["color2"] = "red"
myClothes
myClothes.removeValue(forKey: "color")
myClothes
myClothes["color"] = "color1"
myClothes
print( myClothes.count)


//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)

var newSet: Set<String> = ["dog", "cat", "cow", "bird", "flower"]
newSet.insert("tree")
newSet
print( newSet.count)

//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)

var partOne = ["word", "new", "action"]
var partTwo = ["song", "word", "earth"]
var OneTwo = partOne + partTwo
print(OneTwo)

//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его или вывести в консоль.


var sumTwoIntegers: (Int, Int) -> Int = { int1, int2 in
    return int1 + int2
}
print(sumTwoIntegers(20,4)) 
