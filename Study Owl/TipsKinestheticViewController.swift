//
//  TipsKinestheticViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/12/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class TipsKinestheticViewController: UIViewController {

    @IBOutlet weak var tipsKinestheticTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipsKinestheticTextView.text = "1. Take Breaks! If your studying requires a lot of sitting still, it’s important to get up and move every once in awhile. Kinesthetic learners can benefit from more frequent (but shorter) breaks from studying/homework. \n \n 2. For some people, it can be helpful to keep your hands busy while studying. This can include doodling, writing, squeezing a stress ball, or using other non-distracting toys. \n \n 3. Try hands-on study techniques, such as performing science experiments, using blocks to review math, or using role-playing to review literature. \n \n 4. More helpful hands-on activities include handwriting (instead of using computers), playing educational games/board games, using flash cards, and playing online games."
    }
}
