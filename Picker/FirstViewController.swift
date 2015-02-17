//
//  FirstViewController.swift
//  Picker
//
//  Created by Nav Bhatti on 2015-02-16.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func buttonClick(sender: UIButton) {
        self.performSegueWithIdentifier("dateSegue", sender:nil)
    }
    
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var Btn: UIButton!
    
    @IBAction func datePickerClicked(sender: UIDatePicker) {
        var dateFormatter = NSDateFormatter();
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle;
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle;
        
        var strDate = dateFormatter.stringFromDate( sender.date );
        dateLabel.text = strDate;
    }

    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        if (segue.identifier == "dateSegue") {
            var svc = segue!.destinationViewController as FourthViewController;
            
            svc.dateData = dateLabel.text
            
            
        }
    }
}

