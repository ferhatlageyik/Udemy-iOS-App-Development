//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Ferhat Geyik on 4.02.2022.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        return [
    Meal(name: "Breakfast", food: [
      Food(name: "Egg", description: "Boiled"),
      Food(name: "Cheese", description: "Ezine")
    ]
        ),
    Meal(name: "Lunch", food: [
        Food(name: "Toast", description: "Ayvalık"),
        Food(name: "Toast", description: "Ayvalık")
        ]
        ),
    Meal(name: "Dinner", food: [
        Food(name: "Burger", description: "CheeseBurger"),
        Food(name: "Burger", description: "CheeseBurger")
        ]
        )
      ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section > meals.count){
            return 0
        } else{
            return meals[section].food.count
        }
       
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let food = meals[indexPath.section].food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
}
