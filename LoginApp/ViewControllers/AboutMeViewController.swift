//
//  ViewController.swift
//  LoginApp
//
//  Created by Dinmukhammed Sagyntkan on 11.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var placeOfResidenceLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var specializationLabel: UILabel!
    
    var placeOfResidence: String!
    var job: String!
    var age: String!
    var education: String!
    var specialization: String!
    
    //MARK: - Private properties
//    private let user = User.getUserInfo(
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeOfResidenceLabel.text = placeOfResidence
        jobLabel.text = job
        ageLabel.text = age
        educationLabel.text = education
        specializationLabel.text = specialization
    }
}

