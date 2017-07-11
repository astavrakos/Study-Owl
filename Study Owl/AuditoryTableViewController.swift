//
//  AuditoryTableViewController.swift
//  Study Owl
//
//  Created by Alexandra Stavrakos on 7/11/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit

class AuditoryTableViewController: UITableViewController {
    
    var myClass = OwlClass()
    
    let math = ["https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-ratios-prop-topic",]
    let mathTitles = ["Ratios, rates, percentages"]
    let science = ["https://google.com"]
    let scienceTitles = [""]
    let english = ["https://quizlet.com"]
    let englishTitles = ["a"]
    let socialStudies = ["https://bing.com"]
    let socialStudiesTitles = [""]
    
    var url = ""
    var subject = [String]()
    


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if myClass.name == "math"
        {
            return mathTitles.count
        }
        else if myClass.name == "english"
        {
            return englishTitles.count
        }
        else if myClass.name == "science"
        {
            return scienceTitles.count
        }
        else
        {
            return socialStudiesTitles.count
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if myClass.name == "math"
        {
            for _ in math
            {
                url = math[indexPath.row]
            }
            
            UIApplication.shared.openURL(URL(string : url)!)
        }
        else if myClass.name == "english"
        {
            for _ in english
            {
                url = english[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string : url)!)
        }
        else
        {
            url = "https://google.com"
            UIApplication.shared.openURL(URL(string : url)!)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        if myClass.name == "math"
        {
            cell.textLabel?.text = mathTitles[indexPath.row]
            return cell
        }
        else if myClass.name == "english"
        {
            cell.textLabel?.text = englishTitles[indexPath.row]
        }
        return cell
    }

}
