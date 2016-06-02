//
//  FactController.swift
//  QuizProgram
//
//  Created by Dak Song on 6/1/16.
//  Copyright © 2016 Jinmo. All rights reserved.
//

import UIKit

class FactController: UIViewController {
    
    var label = String();
    @IBOutlet var greetingField: UILabel!
    
    override func viewDidLoad() {
        self.greetingField.text = "Hello " + label;
    }
    
}
