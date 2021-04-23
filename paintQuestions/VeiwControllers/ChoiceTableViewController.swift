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
        
        tableView.rowHeight = 200
       
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = TypeEnimals.allCases.count
        return count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let arrayNames = TypeEnimals.allCases
        let name = arrayNames[indexPath.row]
        let names = typeEnimalString(for: name)
        
        
        var content = cell.defaultContentConfiguration()
        content.text = names
        content.image = UIImage(named: names)
        cell.contentConfiguration = content
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVS = segue.destination as? ViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let arrayNames = TypeEnimals.allCases
        let name = arrayNames[indexPath.row]
        mainVS.kindOfType = name
        
    }
    

}
