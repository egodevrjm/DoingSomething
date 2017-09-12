//
//  ToDoTableViewController.swift
//  DoingSomething
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos: [ToDoItems] = []
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }

    func getToDos() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let coreDataToDos = try? context.fetch(ToDoItems.fetchRequest()) as? [ToDoItems] {
                if let tDos = coreDataToDos {
                    toDos = tDos
                    tableView.reloadData()
                }
                
            }
        }
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let toDo = toDos[indexPath.row]
        
        if let name = toDo.name {
            
            if toDo.isImportant {
                cell.textLabel?.text = "\(name)❗️"
                
            } else {
                cell.textLabel?.text = "\(name)"
                
            }
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let toDo = toDos[indexPath.row]
        performSegue(withIdentifier: "complete", sender: toDo)
    }

  

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddViewController {
            addVC.preVC = self
        }
        if let doneVC = segue.destination as? EditViewController {
            if let toDo = sender as? ToDoItems {
                doneVC.selectToDo = toDo
                doneVC.preVC = self
            }
            
        }
        
    }
   

}
