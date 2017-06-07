//
//  ActivityTableViewController.swift
//  delegatePractice
//
//  Created by Tommy Lam on 6/7/17.
//  Copyright © 2017 Tomas Lahm. All rights reserved.
//

import UIKit

class ActivityTableViewController: UITableViewController, AddActivityDelegate {

    var activities: [Activity] = []
    
    var currentlySelectedIndexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let activity1 = Activity(name: "Act1", description: "Activity 1")
        activities.append(activity1!)
        
        let activity2 = Activity(name: "Act2", description: "Activity 2")
        activities.append(activity2!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func didSaveActivity(activity: Activity){
        print("Activity was saved:")
        activities.append(activity)
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityCell", for: indexPath)
        
        //
        
        cell.textLabel?.text = activities[indexPath.row].name
        cell.detailTextLabel?.text = activities[indexPath.row].description
        
        return cell
    }
/*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentlySelectedIndexPath = indexPath
    }
    
*/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next"{
            let activityDetailViewController = segue.destination as! ActivityDetailViewController
            let cell = sender as! UITableViewCell
            let indexPath = self.tableView.indexPath(for: cell)
            activityDetailViewController.activity = activities[(indexPath?.row)!]
            
            //activityDetailViewController.nameLabel.text =
        }
        if segue.identifier == "addNewAct"{
            let navigationViewController = segue.destination as! UINavigationController
            let addActivityController = navigationViewController.topViewController as! AddActivityViewController
            addActivityController.delegate = self
            //addActivityController.activityTableViewController = self
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
