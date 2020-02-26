import UIKit

/*:
 1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите переменную sum типа Optional-Int  без начального значения
 - Присвойте sum значение равное сумме x и y
 */
let x:Int = 0
var y:Double = 1.0
var sum:Int?
sum = x + Int(y)

/*:
 2. Разверните опционал sum и выведите в консоль. Обратите внимание чтобы в выводе отсутствовало Optional()
 */

if let sumNonOptional = sum {
    print(sumNonOptional)
}

/*:
 3. Выведите в консоль четные числа от 2 до 2000
 */
var newArray = Array (2...2000)
for element in newArray {
    if element%2 == 0 {
        print(element)
    }
}

/*:
 4. Объявите новый тип ColorTuple, который является tuple из четырех компонентов (3 для цвета и один для прозрачности)
 Объявите переменную myColor типа ColorTuple?
 Задайте ей значение
 */
struct ColorTuple {
    var color01: Int = 0
    var color02: Int = 0
    var color03: Int = 0
    var transperancy: Double = 0.0
}
var myColor = ColorTuple(color01: 1, color02: 111, color03: 2, transperancy: 0.1)

 
/*:
 5. Объявите функцию, которая получет на вход 3 параметра типа Int и возвращает результат типа ColorTuple
 */
func functionParams(color01: Int,color02: Int,color03: Int) -> ColorTuple {
    let newColor = ColorTuple()
    return newColor
}

/*:

 6. Выведите в консоль результат работы вашей функции для summ
 */

//7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией*/

 func getName (fstName:String, lastName:String) -> (String,String) {
     return (fstName, lastName)
 }

 /*:

/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива
 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]
 
