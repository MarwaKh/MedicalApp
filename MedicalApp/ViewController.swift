//
//  ViewController.swift
//  MedicalApp
//
//  Created by My Computer on 2017-02-12.
//  Copyright © 2017 Marwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
   
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    @IBOutlet weak var zipCode: UITextField!
    
    @IBOutlet weak var pickerButton: UIButton!
    @IBOutlet weak var buyNowbutton: UIButton!
    
    @IBOutlet weak var background: UIView!
    
    let States = [ "Alberta","British Columbia","Manitoba","New Brunswick","Newfoundland and Labrador","Northwest Territories","Nova Scotia","Nunavut","Ontario","Prince Edward Island","Quebec","Saskatchewan","Yukon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return States.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return States[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerButton.setTitle (States[row], for: UIControlState.normal)
        picker.isHidden = true
        zipCodeLabel.isHidden = false
        zipCode.isHidden = false
        buyNowbutton.isHidden = false
    }
    
    @IBAction func pickerButtonTapped(_ sender: Any) {
         picker.isHidden = false
         zipCodeLabel.isHidden = true
         zipCode.isHidden = true
         buyNowbutton.isHidden = true
    }
    @IBAction func buyNowButtonTapped(_ sender: Any) {
        background.isHidden = false
       
    }

}

