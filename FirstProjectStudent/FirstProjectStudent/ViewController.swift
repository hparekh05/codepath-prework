//
//  ViewController.swift
//  FirstProjectStudent
//
//  Created by hiya parekh on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        //Creates an alert where we pass the message, which is in the introduction//
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        //A way to dismiss the box when it opens up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        //Passing this action to the alert controller so it can be dismissed//
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


   
}

