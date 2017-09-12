//
//  ToDo.swift
//  DoingSomething
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class ToDo {
    var name = ""
    var isImportant = false
    var details = ""
    
    func createToDo() -> [ToDo] {
        let eggs = ToDo()
        eggs.name = "Buy Eggs"
        eggs.isImportant = false
        eggs.details = "We need more eggs for that cake."
        
        let tools = ToDo()
        tools.name = "Clean tool cupboard"
        tools.isImportant = true
        tools.details = "Clean out the tool cupboard as it is a massive pigsty in there."
        
        let milk = ToDo()
        milk.name = "Buy Milk"
        milk.isImportant = false
        milk.details = "We need more eggs for that cake."
        
        let water = ToDo()
        water.name = "Buy Water"
        water.isImportant = false
        water.details = "We need more eggs for that cake."
        
        let createApp = ToDo()
        createApp.name = "Create the tea run app"
        createApp.isImportant = true
        createApp.details = "Create the tea run app as suggested by Alison so it can be tested."
        
        let oj = ToDo()
        oj.name = "Buy Orange Juice"
        oj.isImportant = false
        oj.details = "We need more eggs for that cake."
        
        let aj = ToDo()
        aj.name = "Buy Apple Juice"
        aj.isImportant = false
        aj.details = "We need more eggs for that cake."
        
        
        return [eggs, tools, milk, createApp, water, oj, aj]
    }
}
