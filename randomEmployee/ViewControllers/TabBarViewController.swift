//
//  TabBarViewController.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 14.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let contacts = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferInfo()
    }
    
    private func transferInfo() {
        let listEmployeeVC = viewControllers?.first as? ListEmployeeViewController
        let infoVC = viewControllers?.last as? InfoTableViewController
        
        listEmployeeVC?.contacts = contacts
        infoVC?.contacts = contacts
    }

}
