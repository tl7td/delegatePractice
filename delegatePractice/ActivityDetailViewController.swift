//
//  ActivityDetailViewController.swift
//  delegatePractice
//
//  Created by Tommy Lam on 6/7/17.
//  Copyright © 2017 Tomas Lahm. All rights reserved.
//

import UIKit

class ActivityDetailViewController: UIViewController {

    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var activity: Activity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("Activity: \(activity)")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = activity?.name
        desLabel.text = activity?.description
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
