//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Dinmukhammed Sagyntkan on 10.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
    }

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
