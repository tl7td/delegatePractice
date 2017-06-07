//
//  AddActivityViewController.swift
//  delegatePractice
//
//  Created by Tommy Lam on 6/7/17.
//  Copyright © 2017 Tomas Lahm. All rights reserved.
//

import UIKit

class AddActivityViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var desTextField: UITextView!
    
    var delegate: AddActivityDelegate?
    
    //var activityTableViewController: ActivityTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveBtn(_ sender: Any) {
        //print("Name: \(nameTextField.text)")
        //print("Description: \(desTextField.text)")
        //OBJ: Save into database
        if(nameTextField.text?.isEmpty)!{
            //*******creating error message
            let defaultAction = UIAlertAction(title: "Close", style: .default, handler: nil)
            
            let alertController = UIAlertController(title: "Error", message: "Please enter valid text", preferredStyle: .alert)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            
            let newActivity = Activity(name: nameTextField.text, description: desTextField.text)
            //activityTableViewController?.activityWasSaved(activity: newActivity!)
            
            delegate?.didSaveActivity(activity: newActivity!)

            self.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func cancelBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
