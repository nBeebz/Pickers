//
//  SecondViewController.swift
//  Picker
//
//  Created by Nav Bhatti on 2015-02-16.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        colourPicker.dataSource = self
        colourPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var colourLabel: UILabel!
    @IBOutlet weak var colourPicker: UIPickerView!
    let pickerData = ["Purple","Blue","Green","Yellow","Orange","Red"]
    
    let pickerColour = [UIColor.purpleColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.yellowColor(), UIColor.orangeColor(), UIColor.redColor()]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colourLabel.text = pickerData[row]
        colourLabel.textColor = pickerColour[row]
    }
    
}

