//
//  Manager.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 14.04.2021.
//

class Contact {
    static let shared = Contact()
    
    var contacts: [Person] = []
    
    private init() {}
    
    let names = ["John",
                 "Aaron",
                 "Tim",
                 "Ted",
                 "Steven"]

    let surnames = ["Smith",
                    "Dow",
                    "Isaacson",
                    "Pennyworth",
                    "Jankins"]

    let numbers = ["+234353",
                   "+234235",
                   "+2352352",
                   "+234",
                   "+235234"]

    let emails = ["asd@mail.ru",
                  "fsad@mail.ru",
                  "gafda@mail.ru",
                  "gdfaf@mail.ru",
                  "sdfadsf@mail.ru"]
}








