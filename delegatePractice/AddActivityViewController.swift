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
        
        
        self.dismiss(animated: true, completion: nil)
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
