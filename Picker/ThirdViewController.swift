//
//  ThirdViewController.swift
//  Picker
//
//  Created by Team5 on 2015-02-16.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let pickerData = ["8", "12", "16", "24", "32", "48", "72"]
    let pickerNumbers = [UIFont (name: "Arial", size: 8.0), UIFont (name: "Arial", size: 12.0), UIFont (name: "Arial", size: 16.0), UIFont (name: "Arial", size: 24.0), UIFont (name: "Arial", size: 32.0), UIFont (name: "Arial", size: 48.0), UIFont (name: "Arial", size: 72.0)]
    
    @IBOutlet var k: UIView!
    @IBOutlet weak var myPicker: UIPickerView!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        var frameRect : CGRect = textField.frame;
        frameRect.size.height = 100;
        textField.frame = frameRect;
        myPicker.dataSource = self
        myPicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    @IBOutlet weak var textLabel: UITextField!
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var x = pickerNumbers[row]
        textLabel.font = x;
        
    }
}
