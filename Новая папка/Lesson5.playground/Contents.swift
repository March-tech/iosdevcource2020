import UIKit

var str = "Hello, playground"


//

//ranges - диапазоны закр полузакр откры
//закрытый  - с плавающей точкой ...
let doubleClosedRange = 1...111.1
let intClosedRange = 1...111  // 1<= <=111

//Циклы

//for - не бесконечен,вып код опр кол-во раз
//whilelet clRange : Range<UInt> = ...5

for index in 0...5 {
    print(index)
}
//break - останавливает цикл


//while - нужно воврем остановить
// используется редко

var whileIndex = 0
while whileIndex < 5 {
    print(whileIndex)
    whileIndex += 1
}


//repeat {
//
//} while true


//unit1 Xcode
//constraints почиттаь -алгоритм пост зависимостей между юай компонентами

