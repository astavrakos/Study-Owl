//
//  TipsAuditoryViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/12/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class TipsAuditoryViewController: UIViewController {

    @IBOutlet weak var tipsAuditoryTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipsAuditoryTextField.text = "1. Because auditory learners are stronger learners when it comes to listening and speaking, it is best to incorporate listening or speaking into studying as much as you can.  \n \n 2. During class, be actively engaged in the lectures and discussions. For review at home, it can be helpful to watch video lectures. \n \n 3. Use mnemonic devices such as acronyms, keywords, and other methods to organize information into groups. Review mnemonic devices in your head or out loud. \n \n4. Reviewing information out loud can be especially helpful for auditory learners. This can involve reading flashcards with a parent or working with a classmate/friend. \n \n 5. Explain important concepts to a friend, sibling, or parent."
    }
}
