//
//  ViewController.swift
//  Study Owl
//
//  Created by Alexandra Stavrakos on 7/9/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var visualView: UIView!
    @IBOutlet weak var auditoryView: UIView!
    @IBOutlet weak var kinestheticView: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    var classes = ["Science", "Math", "Reading/Writing", "History"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.isHidden = true
        pickerView.accessibilityElementsHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return classes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return classes[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

