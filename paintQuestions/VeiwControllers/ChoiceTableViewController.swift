//
//  ChoiceTableViewController.swift
//  paintQuestions
//
//  Created by михаил сулим on 22.04.2021.
//

import UIKit

class ChoiceTableViewController: UITableViewController {
    
    let groupList = TypeEnimals.self

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 120
        tableView.contentMode = .scaleToFill
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = TypeEnimals.allCases.count
        return count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let arrayNames = TypeEnimals.allCases
        //let name = arrayNames[indexPath.row]
        let names = typeEnimalString(for: arrayNames[indexPath.row])
         
        var content = cell.defaultContentConfiguration()
        content.text = names
        content.image = UIImage(named: names)
        content.imageProperties.maximumSize = CGSize(width: (tableView.rowHeight + 20), height: (tableView.rowHeight))
        content.imageProperties.cornerRadius = tableView.rowHeight/4
        cell.contentConfiguration = content
        return cell
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVS = segue.destination as? ViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let arrayNames = TypeEnimals.allCases
        let name = arrayNames[indexPath.row]
        mainVS.kindOfType = name
        
    }
    

}
