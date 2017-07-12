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
        visualTipsTextView.text = "1. For visual learners, it's helpful to use resources that are visually engaging. For example, use Quizlets or online videos for review. \n \n 2. Create concept maps or graphic organizers to organize your notes and thoughts. \n \n 3. Instead of just copying down information your teacher gives you as bullet points, take notes using an outline format. \n \n 4. Make diagrams, charts, and pictures about your information. \n \n 5. Use imagery and illustrations to review information."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
