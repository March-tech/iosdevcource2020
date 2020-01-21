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
//если массв константа мы не можем изменить кол-во эл-тов

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
var customTuple: MyCustomTupleType
customTuple.integer = 1
customTuple



//Set

//нет возможности обращатбся с помошью сабскипта, проверяет есть ли искомый элемент
//creating
var customSet: Set<Int> = [1,2,3,4,5]
//customSet.count -кол-во эл в сете
customSet.count
var subSet: Set<Int> = [2,3,4,7]
var inSubset = subSet.isSubset(of: customSet)
subSet.intersection(customSet)


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
    
    fileprivate func shortAction() {
        
    }
    static func InternalFunc () {
        shortAction()
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

var customClosure: (Int, String) -> Void = {
  print("closer is called")
    print($0)
    print($1)
}
var newClouser = customClosure
newClouser(1, "hello")

var oneMoreClosure: MyClosure {
//    $0
//    $1
//}

//$ позволяет обратитбься к конткретному элементу

