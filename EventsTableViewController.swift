
//
//  EventsTableViewController.swift
//  Study Owl
//
//  Created by Brian Browdy on 7/12/17.
//  Copyright © 2017 Alexandra Stavrakos. All rights reserved.
//

import UIKit
import RealmSwift

class EventsTableViewController: UITableViewController {

    var eventsArray = [String]()
    var objects = [Any]()
//    let realm = try! Realm()
//    lazy var events: Results<Object> = {
//        self.realm.objects(Object.self)
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        for event in events {
//            objects.append(event)
//        }
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return eventsArray.count
    }
    
    
    
    func insertNewEvent(_ sender: Any)
    {
        let alert = UIAlertController(title: "Add Event", message: nil, preferredStyle: .alert)
        alert.addTextField{ (textField) in
            textField.placeholder = "Title"
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
         let insertAction = UIAlertAction(title: "Add", style: .default) { (action) in
            self.eventsArray.append((alert.textFields![0]).text!)
            self.tableView.reloadData()
        }
//        self.objects.append(events)
//        try! self.realm.write {
//            self.realm.add(events)
//        }
        self.tableView.reloadData()
        alert.addAction(insertAction)
        present(alert, animated: true, completion: nil)
       
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.eventsArray.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    @IBAction func onAddTapped(_ sender: Any) {
        insertNewEvent((Any).self)
        self.tableView.reloadData()
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = eventsArray[indexPath.row]
        return cell
    }
    
}
