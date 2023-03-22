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
    
    var minimumNumber: String!
    var maximumNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumNumberTF.text = minimumNumber
        maximumNumberTF.text = maximumNumber
    }
    
    @IBAction func cancelButtonDidTapped() {
        dismiss(animated: true)
    }
}
