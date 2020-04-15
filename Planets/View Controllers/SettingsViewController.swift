//
//  SettingsViewController.swift
//  Planets
//
//  Created by Ahava on 4/15/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        // Get whether Pluto should be a planet from UserDefaults
        let shouldShowPluto = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        
        shouldShowPlutoSwitch.isOn = shouldShowPluto
    }
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        
        // Set whether Pluto should be a planet or not in UserDefaults
        UserDefaults.standard.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func done(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
