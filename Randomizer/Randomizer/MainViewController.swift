//
//  MainViewController.swift
//  Randomizer
//
//  Created by Роман Козловский on 21.03.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var minimumLabel: UILabel!
    @IBOutlet var maximumLabel: UILabel!
    @IBOutlet var randomNumberLabel: UILabel!
    
    @IBOutlet var getResultButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResultButton.layer.cornerRadius = 10
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumNumber = minimumLabel.text
        settingsVC.maximumNumber = maximumLabel.text
        
    }

    @IBAction func getResultButtonPressed() {
        let minimumNumber = Int(minimumLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumLabel.text ?? "") ?? 100
        
        randomNumberLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minimumLabel.text = settingsVC.minimumNumberTF.text
        maximumLabel.text = settingsVC.maximumNumberTF.text
    }
}

