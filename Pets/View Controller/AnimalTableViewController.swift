//
//  AnimalTableViewController.swift
//  Pets
//
//  Created by Welinkton on 9/4/18.
//  Copyright © 2018 Lambda. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {

    // calling (model class)
    
   var pets = Animal()
    
    // var petList = ["Happy the Monkey", "Donald the Duck"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows

        return pets.animalList.count
        
        //return petList.count

    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)

        // Configure the cell...
        
        let pet = pets.animalList[indexPath.row]
        
        cell.textLabel?.text = pet

        return cell
    }
    
   
    

}
