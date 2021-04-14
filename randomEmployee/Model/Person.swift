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
        
        var contacts: [Person] = []
        
        let names = Contact.shared.names.shuffled()
        let surnames = Contact.shared.surnames.shuffled()
        let emails = Contact.shared.emails.shuffled()
        let phoneNumbers = Contact.shared.numbers.shuffled()
        
        for index in 0..<names.count {
            let contact = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                number: phoneNumbers[index])
            
            contacts.append(contact)
        }
        return contacts
    }
}



