//
//  ViewController.swift
//  Postcard
//
//  Created by Graham Watson on 29/12/2015.
//  Copyright © 2015 Graham Watson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // add comment to test git
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.hidden = false
        nameLabel.hidden = false
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        // need one of each in case user exits from either field
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

