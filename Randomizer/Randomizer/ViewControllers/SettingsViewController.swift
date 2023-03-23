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
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumNumberTF.delegate = self
        maximumNumberTF.delegate = self
        minimumNumberTF.text = randomNumber.minimumValue.formatted()
        maximumNumberTF.text = randomNumber.maximumValue.formatted()
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        view.endEditing(true)
        dismiss(animated: true)
        delegate.setNewValue(for: randomNumber)
    }
}
// MARK: - UITextFieldDelegate
extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        guard let numberValue = Int(newValue) else { return }
        
        if textField == minimumNumberTF {
            randomNumber.minimumValue = numberValue
        } else {
            randomNumber.maximumValue = numberValue
        }
    }
}
