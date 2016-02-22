//
//  SecondViewController.swift
//  TextFieldProblem
//
//  Created by Jose Roberto Abreu on 2/22/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var delegate: SelectorDelegate?
    
    @IBAction func closeViewController(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
        delegate?.optionSelected()
    }
    
}
