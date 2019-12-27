//
//  ViewController.swift
//  Delegate_Protocols
//
//  Created by Bhupendrasinh Thakre on 12/26/19.
//  Copyright © 2019 Bhupendrasinh Thakre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Created new label
    @IBOutlet weak var labelOne: UILabel!
    
    // created text field
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // beam me up Scotty
    // Now Happening
    
    @IBAction func beamMeUpScotty(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
        }
    }
    
}

