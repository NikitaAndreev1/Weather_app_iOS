//
//  MyCitiesViewController.swift
//  Weather_app_iOS
//
//  Created by Nicks on 27.07.2020.
//  Copyright © 2020 Nicks. All rights reserved.
//

import UIKit

class MyCitiesViewController: UITableViewController {

    var cities = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCitiesCell", for: indexPath)
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }
 
    @IBAction func addCity(segue: UIStoryboardSegue) {
        
        if segue.identifier == "addCity" {
            
            let allCitiesController = segue.source as! AllCitiesController
            
            if let indexPath = allCitiesController.tableView.indexPathForSelectedRow {
                
                let city = allCitiesController.cities[indexPath.row]
                if !cities.contains(city) {
                cities.append(city)
                tableView.reloadData()
            }
            }
  }
    }
        override func tableView(
            _ tableView: UITableView,
            commit editingStyle: UITableViewCell.EditingStyle,
            forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                cities.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade) }
            }
        
        
        
}


