//
//  ViewController.swift
//  ContactsHW
//
//  Created by Анна Басюк on 10.06.2021.
//

import UIKit

class ViewController: UIViewController {

    private var personlist = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

/// Mark: UITableViewDelegate

extension ViewController {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let person = personlist[indexPath.row]
        
        performSegue(withIdentifier: "showDetails", sender: person)
    }
}


extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
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

extension ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailPersonViewController else { return }
        
        vc.person = sender as? Person
    }
}

