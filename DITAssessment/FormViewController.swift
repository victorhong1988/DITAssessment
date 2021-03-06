//
//  FormViewController.swift
//  DITAssessment
//
//  Created by Victor Hong on 17/02/2017.
//  Copyright © 2017 Victor Hong. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var favouriteColourLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var carsLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
    var favouriteColour: String?
    var salary: String?
    var activity: String?
    var cars: String?
    var comments: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let user = UserDefaults.standard.dictionary(forKey: "currentUser")
        let firstName = user?["firstName"] as? String
        let lastName = user?["lastName"] as? String
        let address = user?["address"] as? String
        
        firstNameLabel.text = firstName
        lastNameLabel.text = lastName
        addressLabel.text = address
        
        favouriteColourLabel.text = favouriteColour ?? "No colour was selected"
        salaryLabel.text = salary ?? "No salary was selected"
        activityLabel.text = activity
        if cars == "" {
            carsLabel.text = "0"
        } else {
            carsLabel.text = cars
        }
        if comments == "" {
            commentsLabel.text = "No comments were made"
        } else {
            commentsLabel.text = comments
        }
        
    }

}
