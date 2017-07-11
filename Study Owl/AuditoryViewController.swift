//
//  AuditoryViewController.swift
//  Study Owl
//
//  Created by Alexandra Stavrakos on 7/11/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class AuditoryViewController: UIViewController {
    
    var myClass = OwlClass()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onMathTapped(_ sender: Any) {
        myClass.name = "math"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "AuditoryTableViewController") as! AuditoryTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func onEnglishTapped(_ sender: Any) {
        myClass.name = "english"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "AuditoryTableViewController") as! AuditoryTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func onScienceTapped(_ sender: Any) {
        myClass.name = "science"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "AuditoryTableViewController") as! AuditoryTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    
    @IBAction func onSSTapped(_ sender: Any) {
        myClass.name = "socialStudies"
        let dvc = self.storyboard?.instantiateViewController(withIdentifier: "AuditoryTableViewController") as! AuditoryTableViewController
        dvc.myClass = self.myClass
        self.present(dvc, animated: true, completion: nil)
    }
    

}
