//
//  Person.swift
//  ContactsHW
//
//  Created by Анна Басюк on 11.06.2021.
//


struct Person {
    let name: String
    let surname: String
    let phone: String
    let mail: String
}



extension Person {
    static func getPersonList() -> [Person] {
        [
            Person(name: "Anna", surname: "Zaytceva", phone: "546372728", mail: "bdgdh@mail.com"),
            Person(name: "Anton", surname: "Antonov", phone: "546335728", mail: "sfsffdh@mail.com"),
            Person(name: "Ivan", surname: "Pupkin", phone: "266372728", mail: "ljfhh@mail.com"),
            Person(name: "Teodor", surname: "Rublev", phone: "866372728", mail: "jjf6gdh@mail.com"),
            Person(name: "Petr", surname: "Kukish", phone: "111372728", mail: "jf72gdh@mail.com"),
            Person(name: "Leonid", surname: "Golubkov", phone: "222372728", mail: "nnndh@mail.com")]
    }
}
