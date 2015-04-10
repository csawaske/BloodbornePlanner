//
//  ViewController.swift
//  Bloodborne Planner
//
//  Created by Connor on 4/9/15.
//  Copyright (c) 2015 Sawaske. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UITextFieldDelegate{
    
    var genders = ["male", "female"]
    var classes = ["Milquetoast", "Lone Survivor", "Troubled Childhood",
            "Violent Past", "Professional", "Military Veteran", "Noble Scion",
            "Cruel Fate", "Waste of Skin"]
    var characters = [Character]()

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var genderChoice: UIPickerView!
    @IBOutlet weak var classChoice: UIPickerView!
    @IBOutlet weak var summary: UILabel!
    @IBOutlet weak var genderLabel: UITextField!

    
    @IBAction func pressedTheButton(sender: AnyObject) {
        var selectedClass = classChoice.selectedRowInComponent(0)
        
        if (selectedClass == 2 || selectedClass == 3 || selectedClass == 7) {
            summary.text = "You have created a " + genders[genderChoice.selectedRowInComponent(0)].lowercaseString + " with a " + classes[selectedClass].lowercaseString + " named " + nameInput.text
        } else {
            summary.text = "You have created a " + genders[genderChoice.selectedRowInComponent(0)].lowercaseString + " " + classes[selectedClass].lowercaseString + " named " + nameInput.text
        }
        characters.append(Character(entryName: nameInput.text, entryGender: genders[genderChoice.selectedRowInComponent(0)], charType: classes[selectedClass]))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderChoice.delegate = self
        genderLabel.delegate = self
        genderChoice.hidden = true
        genderLabel.text = nil
        summary.numberOfLines = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 0:
            return classes.count
        case 1:
            return genders.count
        case 2:
            return characters.count
        default:
            return 0
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        switch pickerView.tag {
        case 0:
            return classes[row]
        case 1:
            return genders[row]
        case 2:
            return characters[row].name
        default:
            return ""
        }
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        genderChoice.hidden = false
        return false
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if (pickerView.tag == 1) {
            genderLabel.text = genders[row]
            genderChoice.hidden = true;
        }
    }
    
}

