//
//  DitailsViewController.swift
//  randomEmployee
//
//  Created by Дэвид Бердников on 14.04.2021.
//

import UIKit

class DitailsViewController: UIViewController {

    
    @IBOutlet weak var numberDetails: UILabel!
    @IBOutlet weak var emailDetails: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullName
        numberDetails.text = contact.number
        emailDetails.text = contact.email
    }
    
}
