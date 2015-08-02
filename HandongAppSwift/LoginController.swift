//
//  LoginController.swift
//  HandongAppSwift
//
//  Created by ghost on 2015. 7. 27..
//  Copyright (c) 2015년 GHOST. All rights reserved.
//

import Foundation
import UIKit

class LoginController: UIViewController {
    
    var ID = "ghost"
    var PW = "ghost"
    
    @IBOutlet weak var idText: UITextField!
    
    @IBOutlet weak var pwText: UITextField!
    
    @IBAction func LoginExe(sender: AnyObject) {
        
        if (idText.text == ID && idText.text == PW){
            print("log-in successful")
            self.performSegueWithIdentifier("SegueToCalender", sender: self)
        }
        else {
//            let alert = UIAlertView()
//            alert.title = "Login failed"
//            alert.message = "wrong input!"
//            alert.addButtonWithTitle("Go back to main page")
// error pop-up
            print("log-in failed")
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }
    
    @IBAction func DismissLogIn(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    
    
    
}