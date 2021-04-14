//
//  ListEmployeeViewController.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 13.04.2021.
//

import UIKit

class ListEmployeeViewController: UITableViewController {
    
    private var contacts = Person.getPerson()
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        contacts.count
        10
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeInfo", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.name
        print(contacts)
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    // MARK: - private functions
    
    
    
}


