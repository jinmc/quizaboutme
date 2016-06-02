//
//  FactViewController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/1/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class FactViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    var receivedString : String = "";
    
    @IBOutlet var firstTrueField: UITextView!
    @IBOutlet var secTrueField: UITextView!
    @IBOutlet var falseField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.greetingLabel.text = "Hello " + receivedString;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "playPressed") {
            let vc : PlayViewController = segue.destinationViewController as! PlayViewController;
            vc.true1 = self.firstTrueField.text;
            vc.true2 = self.secTrueField.text;
            vc.false1 = self.falseField.text;
            vc.name = receivedString;
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
