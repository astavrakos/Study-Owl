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

    let math = ["http://www.commoncoresheets.com/Operations.php", "http://www.coolmath.com/prealgebra/05-order-of-operations/05-order-of-operations-parenthesis-PEMDAS-04"]
    let mathTitles = ["Order of Operations Worksheet", "Order of Operations Picture Lesson"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mathTitles.count
    }
    
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = mathTitles[indexPath.row]
        return cell
        
    }
}
