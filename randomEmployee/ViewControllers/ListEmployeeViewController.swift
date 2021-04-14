//
//  ListEmployeeViewController.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 13.04.2021.
//

import UIKit

class ListEmployeeViewController: UITableViewController {
    
    var contacts: [Person]!
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeInfo", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let DitailsVC = segue.destination as? DitailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = contacts[indexPath.row]
        DitailsVC.contact = contact
    }
    
    // MARK: - private functions
    
    
    
}


