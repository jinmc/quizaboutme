//
//  NameController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/1/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class NameController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    
    
    @IBAction func startButton(sender: AnyObject) {
    
        performSegueWithIdentifier("startPressed", sender: self);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "startPressed") {
            var vc :FactController = segue.destinationViewController as FactController
                
                vc.label = self.nameField.text!;
        }
        
    }
    
}
