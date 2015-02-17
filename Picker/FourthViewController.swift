//
//  FourthViewController.swift
//  Picker
//
//  Created by Nav Bhatti on 2015-02-16.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    var dateData:String!
    var colourData:UIColor;
    var fontData:UIFont;

    
    @IBOutlet var finalUIView: UIView!
    @IBOutlet weak var finalTextField: UITextField!
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad();
        finalTextField.text = dataData;
        finalTextField.font = fontData;
        finalTextField.textColor = colourData;
    }
}