//
//  InfoTableViewController.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 15.04.2021.
//

import UIKit

class InfoTableViewController: UITableViewController {

    var contacts: [Person]!


    // MARK: - Table view data source
    
    override func viewDidLoad() {
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 100))
        
        footer.backgroundColor = .lightGray
        
        tableView.tableFooterView = footer
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondTab", for: indexPath)
        
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = "\(contact.number)"
        default:
            content.text = "\(contact.email)"
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    contacts[section].fullName
    }


}
