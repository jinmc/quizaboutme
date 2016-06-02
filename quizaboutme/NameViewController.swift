//
//  NameViewController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/1/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "startPressed") {
            let vc : FactViewController = segue.destinationViewController as! FactViewController;
            vc.receivedString = self.nameField.text!;
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
