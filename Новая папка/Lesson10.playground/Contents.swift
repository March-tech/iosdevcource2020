import UIKit

var str = "Hello, playground\n текст с новой строки после символа слэщ н"
var stringVar: String
// \0 = " "
var multiline = """
позволяет записывать текст с сразу обозначеными строками
позволянт записывать текст с сразу обозначеными строками
позволянт записывать текст с сразу обозначеными строками
"""


//string - value type mutability


str = "Hello"
str += " "
str = str + "world"
str += "world"
str.count
"ABC" > "ZXC" // сравнивает по алфавиту
//стринг тип - это как массив символов
let exclamationCharacter: Character = "!"

str.append(exclamationCharacter)

//можно обращаться к символу по индексу
let  helloWord = "Hello"
str.insert(contentsOf: "\n", at: helloWord.endIndex)

"Hello" == "Hello"

//сравнение на идентичность слов и порядка
"Hello".lowercased() == "hello".lowercased()

"Hello".uppercased()
"Hello World".capitalized == "hello world".capitalized  //делает все первые буквы кадого слова большими
"Hello world".localizedCapitalized

//можно проверять стринги на наличие префиксов суффикосв, пригодиться для работы с урл
"Hello world".hasPrefix("hello".capitalized)
"Hello world".hasSuffix("world")

"ourApp:/main/screen/page".split(separator: "/", omittingEmptySubsequences: false).count
let mainString = "ourApp:/main/screen/page"
var substring = mainString.split(separator: "/").first
var newSub = String(substring ?? "")


//enum - тип похож на struct. не базовый, тип нужно создавать и описывать

enum Condition {
    case precipitation(Int)
    case fog(Int)
    case clear
    case mist
}
var forecast: Condition = .fog(50)
var tomorrow: Condition
tomorrow = .precipitation(100)
//forecast == tomorrow

switch forecast {
case .clear:
    print("clear")
case .fog:
    print("fog")
case .precipitation(let amount):
    print("precipitation: \(amount)")
    
//default:
//    print("any") / в случае enam - default лучще не использовать
case .mist:
    print("mist")
}


switch tomorrow {
case .clear:
    print("clear")
case .fog(let amount):
    print("fog \(amount)")
case .precipitation(let amount):
    print("precipitation: \(amount)")
    
//default:
//    print("any") / в случае enam - default лучще не использовать
case .mist:
    print("mist")
}
//raw values - для того чтобы парсить json


enum CustomError: Int {
  //  typealias RawValue = <#T##Type###>
    case notFound = 0
    case wrongRequest
    case anyError
}

let error = CustomError.anyError

if error.rawValue == 2 {
    print("not found")
}


enum Opt <T> {
    case none
    case value(T)
}
var optValue: Opt<Int>
optValue = .value(10)


//enum ButtonState {
//    case on(UIColor)
//    case off(UIColor)
//
//    func printState() {
//        switch self {
//        case .on:
//            print('On')
//        case .off:
//        print("Off")
//        }
//    }
//}
//var buttonState = ButtonState.on(.red)
//buttonState.printState()
//switch buttonState{
//case .on (let color):
//    print (color)
//case .off (let color)
//    print("off color: \(color)")
//}
