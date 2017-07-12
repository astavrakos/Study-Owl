//
//  TipsVisualViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/12/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class TipsVisualViewController: UIViewController {
    

    @IBOutlet weak var visualTipsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        visualTipsTextView.text = "TEST"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
