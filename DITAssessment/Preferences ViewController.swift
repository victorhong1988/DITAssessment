//
//  Preferences ViewController.swift
//  DITAssessment
//
//  Created by Victor Hong on 17/02/2017.
//  Copyright © 2017 Victor Hong. All rights reserved.
//

import UIKit

class Preferences_ViewController: UIViewController {

    @IBOutlet weak var favouriteColourSegementedControl: UISegmentedControl!
    @IBOutlet weak var salarySegementedControl: UISegmentedControl!
    
    @IBOutlet weak var movieCheckbox: M13Checkbox!
    @IBOutlet weak var swimmingCheckbox: M13Checkbox!
    @IBOutlet weak var colouringCheckbox: M13Checkbox!
    @IBOutlet weak var runningCheckbox: M13Checkbox!
    @IBOutlet weak var bikingCheckbox: M13Checkbox!
    @IBOutlet weak var mountainClimbingCheckbox: M13Checkbox!
    @IBOutlet weak var familyCheckbox: M13Checkbox!
    @IBOutlet weak var skatingCheckbox: M13Checkbox!
    @IBOutlet weak var skiingCheckbox: M13Checkbox!
    @IBOutlet weak var noneCheckbox: M13Checkbox!
    
    @IBOutlet weak var carsTextField: UITextField!
    @IBOutlet weak var commentsTextField: UITextField!
    
    var favouriteColourSelected = "Red"
    var salarySelected = "<30k"
    
    var isMovieChecked = M13Checkbox.CheckState.unchecked
    var isSwimmingChecked = M13Checkbox.CheckState.unchecked
    var isColouringChecked = M13Checkbox.CheckState.unchecked
    var isRunningChecked = M13Checkbox.CheckState.unchecked
    var isBikingChecked = M13Checkbox.CheckState.unchecked
    var isMountainClimbingChecked = M13Checkbox.CheckState.unchecked
    var isFamilyChecked = M13Checkbox.CheckState.unchecked
    var isSkatingChecked = M13Checkbox.CheckState.unchecked
    var isSkiingChecked = M13Checkbox.CheckState.unchecked
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setCheckBox(checkbox: movieCheckbox)
        setCheckBox(checkbox: swimmingCheckbox)
        setCheckBox(checkbox: colouringCheckbox)
        setCheckBox(checkbox: runningCheckbox)
        setCheckBox(checkbox: bikingCheckbox)
        setCheckBox(checkbox: mountainClimbingCheckbox)
        setCheckBox(checkbox: familyCheckbox)
        setCheckBox(checkbox: skatingCheckbox)
        setCheckBox(checkbox: skiingCheckbox)
        setCheckBox(checkbox: noneCheckbox)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        
        if(!isUserLoggedIn) {
            self.performSegue(withIdentifier: "loginView", sender: self)
        }
    }

    @IBAction func favouriteColourChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            favouriteColourSelected = "Red"
            sender.tintColor = .red
        case 1:
            favouriteColourSelected = "Blue"
            sender.tintColor = .blue
        case 2:
            favouriteColourSelected = "Yellow"
            sender.tintColor = .yellow
        case 3:
            favouriteColourSelected = "Other"
            sender.tintColor = .black
        default:
            break
        }
    }
    
    @IBAction func salaryChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            salarySelected = "<30k"
        case 1:
            salarySelected = "30-35k"
        case 2:
            salarySelected = "35-40k"
        case 3:
            salarySelected = "40-45K"
        case 4:
            salarySelected = "45K+"
        default:
            break
        }
    }
    
    @IBAction func movieCheckboxTapped(_ sender: M13Checkbox) {
        
        if movieCheckbox.checkState == M13Checkbox.CheckState.checked {
            isMovieChecked = M13Checkbox.CheckState.checked
        } else {
            isMovieChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func swimmingCheckboxTapped(_ sender: M13Checkbox) {
        
        if swimmingCheckbox.checkState == M13Checkbox.CheckState.checked {
            isSwimmingChecked = M13Checkbox.CheckState.checked
        } else {
            isSwimmingChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func colouringCheckboxTapped(_ sender: M13Checkbox) {
        
        if colouringCheckbox.checkState == M13Checkbox.CheckState.checked {
            isColouringChecked = M13Checkbox.CheckState.checked
        } else {
            isColouringChecked = M13Checkbox.CheckState.unchecked
        }
        
    }
    
    @IBAction func runningCheckboxTapped(_ sender: M13Checkbox) {
        
        if runningCheckbox.checkState == M13Checkbox.CheckState.checked {
            isRunningChecked = M13Checkbox.CheckState.checked
        } else {
            isRunningChecked = M13Checkbox.CheckState.unchecked
        }
        
    }
    
    @IBAction func bikingCheckboxTapped(_ sender: M13Checkbox) {
        
        if bikingCheckbox.checkState == M13Checkbox.CheckState.checked {
            isBikingChecked = M13Checkbox.CheckState.checked
        } else {
            isBikingChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func mountaingCheckboxTapped(_ sender: M13Checkbox) {
        
        if mountainClimbingCheckbox.checkState == M13Checkbox.CheckState.checked {
            isMountainClimbingChecked = M13Checkbox.CheckState.checked
        } else {
            isMountainClimbingChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func familyCheckboxTapped(_ sender: M13Checkbox) {
        
        if familyCheckbox.checkState == M13Checkbox.CheckState.checked {
            isFamilyChecked = M13Checkbox.CheckState.checked
        } else {
            isFamilyChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func skatingCheckboxTapped(_ sender: M13Checkbox) {
        
        if skatingCheckbox.checkState == M13Checkbox.CheckState.checked {
            isSkatingChecked = M13Checkbox.CheckState.checked
        } else {
            isSkatingChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func skiingCheckboxTapped(_ sender: M13Checkbox) {
        
        if skiingCheckbox.checkState == M13Checkbox.CheckState.checked {
            isSkiingChecked = M13Checkbox.CheckState.checked
        } else {
            isSkiingChecked = M13Checkbox.CheckState.unchecked
        }
    }
    
    @IBAction func noneCheckboxTapped(_ sender: M13Checkbox) {
        
        if noneCheckbox.checkState == M13Checkbox.CheckState.checked {
            movieCheckbox.setCheckState(.unchecked, animated: true)
            swimmingCheckbox.setCheckState(.unchecked, animated: true)
            colouringCheckbox.setCheckState(.unchecked, animated: true)
            runningCheckbox.setCheckState(.unchecked, animated: true)
            bikingCheckbox.setCheckState(.unchecked, animated: true)
            mountainClimbingCheckbox.setCheckState(.unchecked, animated: true)
            familyCheckbox.setCheckState(.unchecked, animated: true)
            skatingCheckbox.setCheckState(.unchecked, animated: true)
            skiingCheckbox.setCheckState(.unchecked, animated: true)
        } else {
            movieCheckbox.setCheckState(isMovieChecked, animated: true)
            swimmingCheckbox.setCheckState(isSwimmingChecked, animated: true)
            colouringCheckbox.setCheckState(isColouringChecked, animated: true)
            runningCheckbox.setCheckState(isRunningChecked, animated: true)
            bikingCheckbox.setCheckState(isBikingChecked, animated: true)
            mountainClimbingCheckbox.setCheckState(isMountainClimbingChecked, animated: true)
            familyCheckbox.setCheckState(isFamilyChecked, animated: true)
            skatingCheckbox.setCheckState(isSkatingChecked, animated: true)
            skiingCheckbox.setCheckState(isSkiingChecked, animated: true)
            
        }
        
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "formView", sender: self)
        
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem) {
        
        UserDefaults.standard.set(false,forKey:"isUserLoggedIn")
        UserDefaults.standard.synchronize()
        
        performSegue(withIdentifier: "loginView", sender: self)
        
    }
    
    func setCheckBox(checkbox: M13Checkbox) {
        
        // Or toggle the state
        checkbox.toggleCheckState(false)
        
        // Set values to the checkbox to return depending on its state.
        checkbox.checkedValue = 1.0
        checkbox.uncheckedValue = 0.0
        checkbox.mixedValue = 0.5
        
        //: Animations
        //: ----------
        
        // Update the animation duration
        checkbox.animationDuration = 1.0
        
        // Change the animation used when switching between states.
        checkbox.stateChangeAnimation = .bounce(.fill)
        
        //: Appearance
        //: ----------
        
        // The background color of the veiw.
        checkbox.backgroundColor = .white
        // The tint color when in the selected state.
        checkbox.tintColor = .blue
        // The tint color when in the unselected state.
        checkbox.secondaryTintColor = .blue
        // The color of the checkmark when the animation is a "fill" style animation.
        checkbox.secondaryCheckmarkTintColor = .white
        
        // Whether or not to display a checkmark, or radio mark.
        checkbox.markType = .checkmark
        // The line width of the checkmark.
        checkbox.checkmarkLineWidth = 2.0
        
        // The line width of the box.
        checkbox.boxLineWidth = 2.0
        // The corner radius of the box if it is a square.
        checkbox.cornerRadius = 1.0
        // Whether the box is a square, or circle.
        checkbox.boxType = .square
        // Whether or not to hide the box.
        checkbox.hideBox = false
        checkbox.setCheckState(.unchecked, animated: false)
        
    }
    
    func createActivity() -> String {
        
        if movieCheckbox.checkState == M13Checkbox.CheckState.unchecked && swimmingCheckbox.checkState == M13Checkbox.CheckState.unchecked && colouringCheckbox.checkState == M13Checkbox.CheckState.unchecked && runningCheckbox.checkState == M13Checkbox.CheckState.unchecked && bikingCheckbox.checkState == M13Checkbox.CheckState.unchecked && mountainClimbingCheckbox.checkState == M13Checkbox.CheckState.unchecked && familyCheckbox.checkState == M13Checkbox.CheckState.unchecked && skatingCheckbox.checkState == M13Checkbox.CheckState.unchecked && skiingCheckbox.checkState == M13Checkbox.CheckState.unchecked && noneCheckbox.checkState == M13Checkbox.CheckState.unchecked || noneCheckbox.checkState == M13Checkbox.CheckState.checked{
            return "No activity was selected"
        }
        
        var activityString = "You like "
        
        if movieCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "movies, "
        }
        if swimmingCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "swimming, "
        }
        if colouringCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "colouring, "
        }
        if runningCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "running, "
        }
        if bikingCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "biking, "
        }
        if mountainClimbingCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "mountain climbing, "
        }
        if familyCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "family, "
        }
        if skatingCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "skating, "
        }
        if skiingCheckbox.checkState == M13Checkbox.CheckState.checked {
            activityString += "skiing, "
        }
        
        let endIndex = activityString.index(activityString.endIndex, offsetBy: -2)
        let finalString = "\(activityString.substring(to: endIndex))."
        return finalString
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "formView" {
            let formVC = segue.destination as? FormViewController
            
            formVC?.favouriteColour = favouriteColourSelected
            formVC?.salary = salarySelected
            
            formVC?.activity = createActivity()
            
            formVC?.cars = carsTextField.text
            formVC?.comments = commentsTextField.text
            
            
        }
        
    }

}

