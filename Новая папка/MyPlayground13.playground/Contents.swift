import UIKit

class Owner{
    var pet: Pet
    
    init(pet:Pet) {
        self.pet = pet
    }
}

class Pet {
    let name: String
    var petOwner: Owner?
    var anistress: (() -> Void)?
  
    init(name: String) {
        self.name = name
        self.anistress = { [unowned self] in
// делаем анврап
//guard let self = self else { return }
            print (self.name)
            }
        
    }
    
    
    
}
//инициал
var dog = Pet(name: "Jack")
var owner = Owner(pet: dog)
dog.petOwner = owner

//let antistress = dog.doAntistress()

    
//Protocol используктся для того чтобы быть увкркнным, что класс который его использует, соответсвует обявленной фкнуции

protocol Default {
    
}
extension Default {
    func sampleFunc () {
        print("Print")
    }
}


protocol RemoteControl {//:}  AnyObject {
    init(numberOfButtons: Int)
   func switchDevice ()
    var numberOfButton: Int { get set }
     var hasVolumeButton: Bool { get }
    
    
    }
extension RemoteControl {
    func switchDevice(){
        print(numberOfButton + 100)
    }
}
class TVRemote:RemoteControl, Default {
    required init(numberOfButtons: Int) {
        self.numberOfButton = numberOfButtons
    }
    
    let hasVolumeButton: Bool = true
    
    var numberOfButton: Int = 0
    
  
    
    
    
    func switchDevice() {
        print("switch")
    }
}

struct CarRemote: RemoteControl {
    init(numberOfButtons: Int) {
        self.numberOfButton = numberOfButtons
        hasVolumeButton = false
    }
    
//    func switchDevice() {
//        print("Switch")
//    }
    
    var numberOfButton: Int
    
    var hasVolumeButton: Bool
    
    
}
var remote = TVRemote(numberOfButtons: 9)
remote.sampleFunc()


func buy (remote: RemoteControl){
    var r = remote
    r.switchDevice()
  //  r.numberOfButton = 1
    print(r.numberOfButton)
 //   r.hasVolumeButton = false
}
var carKey = CarRemote(numberOfButtons: 2)
buy(remote: carKey)
buy(remote: remote)


class Empty: Default {}
Empty().sampleFunc()

enum MyEnum: Default {
    case first
}
MyEnum.first.sampleFunc()

func Cast(remote: AnyObject){
    guard let control = remote as? Default else { return }
    control.sampleFunc()
}

protocol DataSourse: AnyObject {
    func data () -> String
    
}

protocol Delegate: AnyObject {
    func react ()
}

class TableView {
    weak var dataSource: DataSourse?
    weak var delegate: Delegate?
    
    func callDelegate() {
        delegate?.react()
    }
    
    func getData() {
        print (dataSource?.data())
        
    }
}

class SampleClass: DataSourse {
    func data() -> String {
        "Hello world"
    }
}

class SampleClassDelegate: Delegate{
    func react() {
        print("Reacterd")
    }
}

let tableView = TableView()
tableView.dataSource = SampleClass()
tableView.delegate = SampleClassDelegate()

tableView.callDelegate()
tableView.getData()
