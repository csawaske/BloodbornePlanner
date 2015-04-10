//
//  ViewController.swift
//  Bloodborne Planner
//
//  Created by Connor on 4/9/15.
//  Copyright (c) 2015 Sawaske. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{
    
    var genders = ["male", "female"]
    var classes = ["Milquetoast", "Lone Survivor", "Troubled Childhood",
            "Violent Past", "Professional", "Military Veteran", "Noble Scion",
            "Cruel Fate", "Waste of Skin"]
    var thisCharacter = Character(entryName: "", entryGender: "", charType: "")

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var genderChoice: UIPickerView!
    @IBOutlet weak var classChoice: UIPickerView!
    @IBOutlet weak var summary: UILabel!

    
    @IBAction func buttonPress(sender: AnyObject) {
        
        switch classChoice.selectedRowInComponent(0) {
        case 2:
            summary.text = "You have created a " + genders[genderChoice.selectedRowInComponent(0)].lowercaseString + " with a " + classes[classChoice.selectedRowInComponent(0)].lowercaseString + " named " + nameInput.text
        case 3:
            summary.text = "You have created a " + genders[genderChoice.selectedRowInComponent(0)].lowercaseString + " with a " + classes[classChoice.selectedRowInComponent(0)].lowercaseString + " named " + nameInput.text
        case 7:
            summary.text = "You have created a " + genders[genderChoice.selectedRowInComponent(0)].lowercaseString + " with a " + classes[classChoice.selectedRowInComponent(0)].lowercaseString + " named " + nameInput.text
        default:
            summary.text = "You have created a " + genders[genderChoice.selectedRowInComponent(0)].lowercaseString + " " + classes[classChoice.selectedRowInComponent(0)].lowercaseString + " named " + nameInput.text
        }
        
        

        thisCharacter = Character(entryName: nameInput.text, entryGender: genders[genderChoice.selectedRowInComponent(0)], charType: classes[classChoice.selectedRowInComponent(0)])

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        if pickerView.tag == 0 {
            return classes.count
        } else {
        return genders.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        if pickerView.tag == 0 {
            return classes[row]
        } else {
            return genders[row]
        }
    }
    

    
}

