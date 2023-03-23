//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Роман Козловский on 21.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumNumberTF: UITextField!
    @IBOutlet var maximumNumberTF: UITextField!
    
    var randomNumber: RandomNumber!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumNumberTF.text = randomNumber.minimumValue.formatted()
        maximumNumberTF.text = randomNumber.maximumValue.formatted()
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        dismiss(animated: true)
    }
}
