//
//  EditViewController.swift
//  DoingSomething
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    var preVC = ToDoTableViewController()
    var selectToDo = ToDo()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var impLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectToDo.name
        descriptionLabel.text = selectToDo.details
        
        if selectToDo.isImportant {
            impLabel.isHidden = false
        } else {
            impLabel.isHidden = true
        }

        
    }

   
    @IBAction func doneBtn(_ sender: UIBarButtonItem) {
        var index = 0
        for toDo in preVC.toDos {
            if toDo.name == selectToDo.name {
                preVC.toDos.remove(at: index)
                preVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
        
        
    }
    

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
