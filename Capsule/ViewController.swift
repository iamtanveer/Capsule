//
//  ViewController.swift
//  Capsule
//
//  Created by Tanveer Singh on 05/06/17.
//  Copyright © 2017 Tanveer Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet var statePickerBtn: UIButton!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var countryInput: UITextField!
    @IBOutlet var buynowBtn: UIButton!
    
    let states = ["Delhi", "West Bengal", "Assam", "Punjab", "Haryana", "Jharkhand"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self //**** Must add when using UIpickerview
        statePicker.delegate = self //**** Must add when using UIpickerview
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryInput.isHidden = true
        countryLabel.isHidden = true
        
    }
    @IBAction func buybtnPressed(_ sender: Any) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1  //number of columns = 1 column ie "state"
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count  //how many states do you wanna put
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal) //for changing of button text
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryInput.isHidden = false
    }
}

