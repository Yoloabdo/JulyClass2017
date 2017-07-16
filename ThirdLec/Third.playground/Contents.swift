//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name: String
    var phone: Int
    var id: Int
    var computer: String?
    
    init(name: String, phone: Int, id: Int, computer: String? = nil) {
        self.name = name
        self.phone = phone
        self.id = id
        self.computer = computer
    }
}
struct PersonTwo{
    var name: String
    var phone: Int
    var id: Int
    var computer: String?
}

var Ahmed = PersonTwo(name: "Ahmed", phone: 324123412, id: 1324, computer: "Mac mini")
var Ahmed2 = Ahmed
Ahmed2.id = 5
print(Ahmed.id)

let Mohamed = Person(name: "Mohamed", phone: 323412, id: 1124, computer: "Mac mini")
let Ali = Person(name: "Ali", phone: 234123, id: 34114)

let Ashraf = PersonTwo(name: "Ashraf", phone: 312312, id: 4123412, computer: "Mac")




let array:[String] = ["Ahmend", "Loay", "Aly"]
var emptyArray = [String]()

emptyArray.count

emptyArray.append("Ahmed")
emptyArray.append(contentsOf: array)
print(emptyArray)

let arrayCol:[Any] = [43214, "Ale"]
print(arrayCol)

for item in emptyArray {
    emptyArray.append("Ahmed")
}
print(emptyArray)

let nam21 = emptyArray[3]

var dic = [String: String]()
dic["Abdo"] = "iOS software engineer"
dic ["Hiatham"] = "Junior iOS engineer"

print(dic)


