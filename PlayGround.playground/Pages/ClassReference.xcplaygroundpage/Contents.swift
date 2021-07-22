import UIKit

class Person {
    
    let firstName: String
    let lastName: String
    let age: Int

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }

}

let karl = Person(firstName: "Karl", lastName: "Pfister", age: 33)
let yuri = Person(firstName: "Yuri Alekseyevich", lastName: "Gagarin", age: 24)
let valentina = Person(firstName: "Valentina", lastName: "Tereshkova", age: 30)

let clubMembers: [Person] = [karl, yuri, valentina]

func areYouAMemberOfTheClub(person: Person) -> Bool{
    return clubMembers.contains{ $0 === person }
}

areYouAMemberOfTheClub(person: karl)
