//
//  ViewController.swift
//  Postcard
//
//  Created by Paul Zerr on 9/25/14.
//  Copyright (c) 2014 Paul Zerr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        // set up messageLabel
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // Set up nameLabel
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        
        
        enterMessageTextField.text = ""
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

