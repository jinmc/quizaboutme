//
//  PlayViewController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/2/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    var name : String = "";
    var true1 : String = "";
    var true2 : String = "";
    var false1 : String = "";
    var randomNum = Int();
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        randomNum = Int(arc4random_uniform(3) + 1);
        
        switch randomNum {
        case 1:
            button1.setTitle(false1, forState: UIControlState.Normal);
            button2.setTitle(true1, forState: UIControlState.Normal);
            button3.setTitle(true2, forState: UIControlState.Normal);
            
        case 2:
            button2.setTitle(false1, forState: UIControlState.Normal);
            button1.setTitle(true1, forState: UIControlState.Normal);
            button3.setTitle(true2, forState: UIControlState.Normal);
            
        case 3:
            button3.setTitle(false1, forState: UIControlState.Normal);
            button1.setTitle(true1, forState: UIControlState.Normal);
            button2.setTitle(true2, forState: UIControlState.Normal);
            
        default: break;
            
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func button1Pressed(sender: AnyObject) {
        if(randomNum == 1) {
        performSegueWithIdentifier("correctAnswer", sender: self);
        } else {
        performSegueWithIdentifier("wrongAnswer", sender: self);
        }
    }
    
    @IBAction func button2Pressed(sender: AnyObject) {
        if(randomNum == 2) {
        performSegueWithIdentifier("correctAnswer", sender: self);
        } else {
        performSegueWithIdentifier("wrongAnswer", sender: self);
        }
        
    }
    
    @IBAction func button3Pressed(sender: AnyObject) {
        if(randomNum == 3) {
        performSegueWithIdentifier("correctAnswer", sender: self);
        } else {
        performSegueWithIdentifier("wrongAnswer", sender: self);
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "correctAnswer"){
            let svc : SuccessViewController = segue.destinationViewController as! SuccessViewController;
            
            svc.name = self.name;
            
            switch randomNum {
            case 1: svc.labelString = (button1.titleLabel?.text)!;
            case 2: svc.labelString = (button2.titleLabel?.text)!;
            case 3: svc.labelString = (button3.titleLabel?.text)!;
            default: break;
            }
        }
        else if(segue.identifier == "wrongAnswer") {
            let vc : FailViewController = segue.destinationViewController as! FailViewController;
            vc.name = self.name;
            vc.true1 = self.true1;
            vc.true2 = self.true2;
            vc.false1 = self.false1;
        }
    }

}
