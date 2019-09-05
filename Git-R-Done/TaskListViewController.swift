//
//  TaskListViewController.swift
//  Git-R-Done
//
//  Created by Brian Gass on 8/30/19.
//  Copyright © 2019 Brian Gass. All rights reserved.
//

import UIKit

class TaskListViewController: UITableViewController {
    
    let taskListArray = ["Clean BP", "Meet w/David", "1 mid yr"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskListArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskListCell", for: indexPath)
        
        cell.textLabel?.text = taskListArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        //let selectedCell = taskListArray[indexPath.row]
    }
    
}




