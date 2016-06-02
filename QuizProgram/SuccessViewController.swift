//
//  SuccessViewController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/2/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {
    
    var labelString : String = "";
    var name : String = "";
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelString + " is the false statement for " + name + "!";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
