//
//  FailViewController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/2/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class FailViewController: UIViewController {
    
    var name : String = "";
    var true1 : String = "";
    var true2 : String = "";
    var false1 : String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "tryAgainPressed") {
            let vc : PlayViewController = segue.destinationViewController as! PlayViewController;
            vc.true1 = self.true1;
            vc.true2 = self.true2;
            vc.false1 = self.false1;
            vc.name = self.name;
        }
    }

}
