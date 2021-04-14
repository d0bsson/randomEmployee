//
//  File.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 13.04.2021.
//



struct Person {
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        "\(name) \("") \(surname)"
    }
    
}

extension Person {
    
    static func getPerson() -> [Person] {
        for _ in 1...5 {
            let contact = Person(
                name: Contact.shared.names.randomElement() ?? "",
                surname: Contact.shared.surnames.randomElement() ?? "",
                email: Contact.shared.emails.randomElement() ?? "",
                number: Contact.shared.numbers.randomElement() ?? ""
            )
            Contact.shared.contacts.append(contact)
        }
        return Contact.shared.contacts
    }
    
}



