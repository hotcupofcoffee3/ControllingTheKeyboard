//
//  ViewController.swift
//  ControllingTheKeyboard
//
//  Created by Adam Moore on 3/22/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func changeLabelButton(_ sender: UIButton) {
        myLabel.text = myTextField.text
        myTextField.endEditing(true)
    }
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Touch outside of textfield dismisses keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Lets the return key dismiiss keyboard
    // Had to add "UITextFieldDelegate" to the class
    // Had to link up the textfield to the view to be one of its delegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

