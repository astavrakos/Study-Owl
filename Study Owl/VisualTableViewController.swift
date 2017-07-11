//
//  VisualTableViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/10/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit
import SafariServices

class VisualTableViewController: UITableViewController {
    
    var myClass = OwlClass()
    let math = ["http://www.commoncoresheets.com/Operations.php", "http://www.coolmath.com/prealgebra/05-order-of-operations/05-order-of-operations-parenthesis-PEMDAS-04"]
    let mathTitles = ["Order of Operations Worksheet", "Order of Operations Picture Lesson"]
    let science = ["https://google.com"]
    let english = ["https://quizlet.com"]
    let englishTitles = ["a"]
    let socialStudies = ["https://bing.com"]
    
    var url = ""
    
    var subject = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if myClass.name == "math"
        {
        return mathTitles.count
        }
        else if myClass.name == "english"
        {
        return englishTitles.count
        }
        else
        {
            return 1
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
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
