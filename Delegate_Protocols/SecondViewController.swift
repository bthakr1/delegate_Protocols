//
//  SecondViewController.swift
//  Delegate_Protocols
//
//  Created by Bhupendrasinh Thakre on 12/26/19.
//  Copyright © 2019 Bhupendrasinh Thakre. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    // data coming from first view controller
    
    var data = ""
    
    @IBOutlet weak var label_2: UILabel!
    
    @IBOutlet weak var textField_2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label_2.text = data
    }
    
    @IBAction func passItBack(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataBack", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataBack" {
            let firstVC = segue.destination as! ViewController
            
            firstVC.dataPassBack = textField_2.text!
            
        }
    }
    
    // Adding a git repositry
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
