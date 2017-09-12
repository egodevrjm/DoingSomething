//
//  AddViewController.swift
//  DoingSomething
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var textView: RoundedTextView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var preVC = ToDoTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func cancelBtn(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func saveBtn(sender: UIBarButtonItem) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        
            let toDo = ToDoItems(entity: ToDoItems.entity(), insertInto: context)
            
            if let titleText = textField.text {
                toDo.name = titleText
                toDo.details = textView.text
                toDo.isImportant = importantSwitch.isOn
                
            }
            try? context.save()
            preVC.tableView.reloadData()
            navigationController?.popViewController(animated: true)
        }
        
        
        
     /*   let toDo = ToDo()
        toDo.name = textField.text!
        toDo.isImportant = importantSwitch.isOn
        toDo.details = textView.text
        preVC.toDos.append(toDo)
        preVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
 
     */
    }
 
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
