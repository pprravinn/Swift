//
//  ViewController.swift
//  AlertViewControllerDemo
//
//  Created by Uday Jain on 2/6/17.
//  Copyright © 2017 Uday Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func singleButtonAction(_ sender: Any) {
        
        let alertViewController: UIAlertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let okAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .default) { action -> Void in
            
            print("Ok")
        }
        alertViewController.addAction(okAction)
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    @IBAction func doubleButtonAction(_ sender: Any) {
        
        let alertViewController: UIAlertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .default) { action -> Void in
            
            print("Cancel")
        }
        let deleteAction: UIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { action -> Void in
            
            print("Delete")
        }
        alertViewController.addAction(cancelAction)
        alertViewController.addAction(deleteAction)
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    @IBAction func threeButtonAction(_ sender: Any) {
        
        let alertViewController: UIAlertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let yesAction: UIAlertAction = UIAlertAction(title: "Yes", style: .default) { action -> Void in
            
            print("Cancel")
        }
        let noAction: UIAlertAction = UIAlertAction(title: "No", style: .default) { action -> Void in
            
            print("No")
        }
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .destructive) { action -> Void in
            
            print("Delete")
        }
        alertViewController.addAction(yesAction)
        alertViewController.addAction(noAction)
        alertViewController.addAction(cancelAction)
        self.present(alertViewController, animated: true, completion: nil)
        
    }
    @IBAction func alertWithTextViewAction(_ sender: Any) {
        
        let alertViewController: UIAlertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        alertViewController.addTextField { (textField) in
            
            textField.placeholder = "Login"
            
        }
        alertViewController.addTextField { (textField) in
            
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .default) { action -> Void in
            
            print("Cancel")
        }
        let loginAction: UIAlertAction = UIAlertAction(title: "Login", style: .default) { action -> Void in
           
            if let namefield = alertViewController.textFields?[0] {
                
                print("UserName: ", namefield.text!)
            }
            if let passwordfield = alertViewController.textFields?[1] {
                
                print("Password: ", passwordfield.text!)
            }

        }
        alertViewController.addAction(cancelAction)
        alertViewController.addAction(loginAction)
        self.present(alertViewController, animated: true, completion: nil)
    }
    

}

