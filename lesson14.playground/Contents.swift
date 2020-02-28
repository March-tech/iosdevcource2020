import UIKit

var str = "Hello, playground"


//extentions

class Sample{
    
}

extension Sample{
    static var variable2: Int = 0
    var variable:Int  {
        return 0
    }
    func sampleMethod() -> Int {
        return 0
    }
}

var sample = Sample()
sample.variable
sample.sampleMethod()
Sample.variable2


//methods

//extension UIColor{
//   static func rgb(_ red: Int,_ green: Int, _blue: Int) -> UIColor {
//    UIColor(red: Double (red), green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
//    }
//}

protocol SampleProtocol {
    func sampleFunc()
  
}

extension Sample: SampleProtocol{
    func sampleFunc() {
  //      do anything
    }
}


//локация методов в  extansion
