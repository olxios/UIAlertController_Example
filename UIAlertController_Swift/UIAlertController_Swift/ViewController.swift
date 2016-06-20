//
//  ViewController.swift
//  UIAlertController_Swift
//
//  Created by olxios on 20/06/16.
//  Copyright © 2016 olxios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func testAlert1() {
        
        let controller = UIAlertController(title: "Error!", message: "Test error message", preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "Dismiss", style: .Destructive) { (action) in
            print("Dismiss button tapped!")
        }
        
        controller.addAction(alertAction)
        presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func testAlert2() {
        
        let controller = UIAlertController(title: "Error!", message: "Test error message", preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "Dismiss", style: .Destructive) { (action) in
            print("Dismiss button tapped!")
        }
        
        controller.addAction(alertAction)
        
        controller.addAction(UIAlertAction(title: "1", style: .Default, handler: nil))
        controller.addAction(UIAlertAction(title: "2", style: .Default, handler: nil))
        controller.addAction(UIAlertAction(title: "3", style: .Default, handler: nil))
        controller.addAction(UIAlertAction(title: "4", style: .Default, handler: nil))
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func testMultipleCancels() {
        
        let controller = UIAlertController(title: "Error!", message: "Test multiple cancels", preferredStyle: .Alert)
        
        let firstCancelAction = UIAlertAction(title: "Cancel 1", style: .Cancel) { (action) in
            print("Cancel 1 button tapped!")
        }
        
        controller.addAction(firstCancelAction)
        
        
        let secondCancelAction = UIAlertAction(title: "Cancel 2", style: .Cancel) { (action) in
            print("Cancel 2 button tapped!")
        }
        
        controller.addAction(secondCancelAction) // Exception!
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func testTextField() {
        
        let controller = UIAlertController(title: "Error!", message: "Test error message", preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "Dismiss", style: .Destructive) { (action) in
            print("Dismiss button tapped!")
            
            let text = controller.textFields?.first?.text
            print("Textfield text \(text!)")
        }
        
        controller.addAction(alertAction)
        
        controller.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Test"
            textField.textColor = UIColor.redColor()
        }
        
        presentViewController(controller, animated: true, completion: nil)
        
    }

}

