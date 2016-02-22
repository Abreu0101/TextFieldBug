//
//  ViewController.swift
//  TextFieldProblem
//
//  Created by Jose Roberto Abreu on 2/22/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

protocol SelectorDelegate{
    func optionSelected()
}

class ViewController: UIViewController {

    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtSecond: UITextField!

}

extension ViewController : SelectorDelegate{
    
    func optionSelected() {
        self.txtSecond.text = "Value set"
    }
    
}

extension ViewController : UITextFieldDelegate{
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if txtSecond == textField{
            self.txtFirst.resignFirstResponder()
            self.txtSecond.resignFirstResponder()
            //self.view.endEditing(false)
            
            textField.resignFirstResponder()
            let selectorViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
            selectorViewController.delegate = self
            selectorViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
            selectorViewController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
            self.presentViewController(selectorViewController, animated: true, completion: nil)
        }
    }
    
}

