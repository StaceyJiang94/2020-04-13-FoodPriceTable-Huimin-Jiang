//
//  ViewController.swift
//  2020-04-13-FoodPriceTable-Huimin-Jiang
//
//  Created by Huimin Jiang on 4/6/20.
//  Copyright © 2020 Huimin Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // connect tableView with swift
    @IBOutlet weak var tableView: UITableView!
    
    // setup data to be serves into your table view
    let foodNameArray = ["Roasted Chicken", "Classic Burger", "Chicken Noodle Soup", "Bow-Tie Pasta", "Pepperoni Pizza", "Italian Salad", "Grilled Steak"]
        
    let foodPriceArray = [13.99, 13.99, 11.99, 12.99, 11.99, 10.99, 15.99]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // define datasource and delegate for tableview
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return number of rows in section
        return foodPriceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //serve data to the cell
        cell.textLabel?.text = foodNameArray[indexPath.row]
        cell.detailTextLabel?.text = "$\(foodPriceArray[indexPath.row])"
        //return the cell
        return cell
    }

}



