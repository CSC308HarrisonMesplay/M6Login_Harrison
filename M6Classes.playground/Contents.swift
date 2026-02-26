import UIKit
/*
 1.designated initializer
 2. convenience initializer: secondary init that calls a designated initializer, provide a default value
 3. failable initializer: can return nil when initializer fails
 4. required initializer: in a inheritance hierarchy
 */
class Person{
    var name: String?
    var age: Int?
    //1.
    init?(name: String, age: Int){
        guard !name.isEmpty, age > 0 else {
            return nil
        }
        self.name = name
        self.age = age
    }
    convenience init?(){
        self.init(name: "Anonymous", age: 0)
        print(#function)
    }
    convenience init?(name: String){
        self.init(name: name, age: 0)
        print(#function)
    }
    convenience init?(name: String, using age: Int){
        self.init(name: name, age: age)
        print(#function)
    }
    
    
    func display(){
        print("Name: \(name ?? ""), Age: \(age ?? 0)")
    }
    
    Person person1 = Person()
    p1.display()
    Person person2 = Person(name: "John")
    p2.display()
    Person person3 = Person(name: "Mary", using: 30)
    p3.display()
}
