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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      return 0
        
    }

}
