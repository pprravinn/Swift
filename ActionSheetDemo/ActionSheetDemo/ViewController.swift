//
//  ViewController.swift
//  ActionSheetDemo
//
//  Created by Uday Jain on 2/14/17.
//  Copyright © 2017 Uday Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ratingsAction(_ sender: Any) {
        
        let actionSheetController = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        let oneAction = UIAlertAction(title: "One", style: .default) { action -> Void in
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
            
        }
    
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { action -> Void in
            
        }
        
        actionSheetController.addAction(oneAction)
        actionSheetController.addAction(cancelAction)
        actionSheetController.addAction(deleteAction)
        
        self.present(actionSheetController, animated: true, completion: nil)
    }
    

}

