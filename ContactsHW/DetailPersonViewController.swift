//
//  DetailPersonViewController.swift
//  ContactsHW
//
//  Created by Анна Басюк on 14.06.2021.
//

import UIKit

class DetailPersonViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = person?.phone
        mailLabel.text = person?.mail
        
    }
    

}
