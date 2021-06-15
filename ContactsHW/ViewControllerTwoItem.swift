//
//  ViewControllerTwoItem.swift
//  ContactsHW
//
//  Created by Анна Басюк on 14.06.2021.
//

import UIKit

class ViewControllerTwoItem: UIViewController {

    private var personlist = Person.getPersonList()
    
    private var sectionTitle = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension ViewControllerTwoItem: UITableViewDelegate{
    
}

extension ViewControllerTwoItem: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personlist.count
    }
    
    @available(iOS 14.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = personlist[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.name + " " + person.surname
        
        cell.contentConfiguration = content
        
        return cell
        
        
    }
}


