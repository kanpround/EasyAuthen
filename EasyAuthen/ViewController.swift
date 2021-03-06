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
    
    let dicUser = ["master":"1234","kaika":"5678","kukkae":"9999"]
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passTextField: UITextField!
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        messageLabel.text = ""
        
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
        if checkSpace(myString: strUser!) && checkSpace(myString: strPass!) {
            print("User or Pass OK.")
            showMessage(strMessage: "   ")
            checkUserAndPass(strUser: strUser!, strPass: strPass!)
            
        } else{
            print("Blank User or Pass!!!")
            
            showMessage(strMessage: "Please fill user of pass!!!")
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
    
    func showMessage(strMessage: String) -> Void {
        messageLabel.text = strMessage
        
    }
    
    func checkUserAndPass(strUser: String, strPass: String) -> Void {
        // check user
        if let testUser = dicUser[strUser] {
            print("testUser ==> \(testUser)")
            
            if strPass == testUser {
                // Pass True
                showMessage(strMessage: "Welcome to SNRU....")
            } else{
                // Pass false
                showMessage(strMessage: "Please try again pass false!!!")
            }
            
            
        } else{
            print("testUser ==> Nill")
            showMessage(strMessage: "No " + strUser + "in my database!!!")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }   // end did recieve

    

} // end main class

