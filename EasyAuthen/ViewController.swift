//
//  ViewController.swift
//  EasyAuthen
//
//  Created by Student09 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Emplicit
    var strUser: String?
    var strPass: String?
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passTextField: UITextField!
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
       // get value form TextField
        strUser = userTextField.text
        strPass = passTextField.text
        
        // show user and pass on console
        print("User ==> \(strUser!)")
        print("Pass ==> \(strPass!)")
        
        // find count string
        let  intUser = strUser?.characters.count
        let  intPass = strUser?.characters.count
        
        
        print("strUser ==> \(intUser!)")
        print("strPass ==> \(intPass!)")
        
        // call checkSpace
        if checkSpace(myString: strUser!) {
            print("User OK.")
        } else{
            print("Blank User!!!")
        
        }
        
    }   // end loginButton

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }   // end main method

    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            // have space
            result = false
        }
        
        return result
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }   // end did recieve

    

} // end main class

