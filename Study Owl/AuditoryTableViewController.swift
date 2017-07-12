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
    
    var math = ["https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-ratios-prop-topic", "https://www.woboe.org/Page/6178", "https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-arithmetic-operations"]
    var mathTitles = ["Ratios, rates, percentages", "Videos for fractions and decimals", "Khan - Arithmetic operations videos"]
    
    var science = ["https://www.youtube.com/watch?v=LEHR8YQNm_Q&list=PLevTym1mJHsTllKYwJdhqgd4bjoZ_wlUZ", "https://www.youtube.com/playlist?list=PLRSIe0MUxDndmkA4PyU-Zw6mNKVVcIXE8", "https://www.youtube.com/playlist?list=PLRSIe0MUxDne1y4uS2w0H7oIH7w_ZZGts", "https://www.youtube.com/playlist?list=PLRSIe0MUxDncRjJ2vYvsXDU0pDnKObrAD", "https://quizlet.com/167626385/scientific-method-flash-cards/" ]
    var scienceTitles = ["YouTube Playlist - Basic Physics & Biology", "Basic Physics Playlist", "Basic Biology Playlist", "Basic Chemistry", "Quizlet - Scientific Method"]
    
    
    var english = ["http://www.corestandards.org/ELA-Literacy/W/6/", "https://quizlet.com/120732897/6th-grade-common-core-vocabulary-flash-cards/", "http://www.audible.com/t2/freetrial6?source_code=GO1GBSH07111690BP&mkwid=s2aJSKgZd_dc&pcrid=205747869292&pmt=b&pkw=%2Bbook%20%2Baudio&cvosrc=ppc.google.%2Bbook%20%2Baudio&cvo_campaign=224869569&cvo_crid=205747869292&Matchtype=b&gclid=Cj0KCQjw7pHLBRDqARIsAFyKPa4hHz18g2PV_grPIXKGWpPYZukdO8MjFdmvWMARfw5Dx2WZSdKdTSYaAua9EALw_wcB"]
    var englishTitles = ["Common Core Standards", "Vocabulary and Concepts", "Find Audio Recordings of Classroom Books"]
    
    var socialStudies = ["https://www.youtube.com/watch?v=KdtgX9ORiW4&list=PLEB3FEDFBFCECD098", "https://www.youtube.com/watch?v=WP_NeirFIkM&index=2&list=PLEB3FEDFBFCECD098", "https://www.youtube.com/watch?v=iMzNPEHNxcc&list=PLEB3FEDFBFCECD098&index=3", "https://www.youtube.com/watch?v=Cg8psGEqLn4", "https://www.youtube.com/watch?v=ancuYECRGN8"]
    var socialStudiesTitles = ["Ancient Egypt", "Greek Gods", "Greek Goddesses", "Colonization in America Audiobook", "US Geography Fun Facts"]
    
    var url = ""
    var subject = [String]()
    


    override func viewDidLoad() {
        super.viewDidLoad()
       // self.clearsSelectionOnViewWillAppear = false
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
        else if myClass.name == "science"
        {
            for _ in science
            {
                url = science[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string : url)!)
        }
        else
        {
            for _ in socialStudies
            {
                url = socialStudies[indexPath.row]
            }
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
        else if myClass.name == "science"
        {
            cell.textLabel?.text = scienceTitles[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = socialStudiesTitles[indexPath.row]
        }
        return cell
    }
    func insertNewObject(_ sender: Any)
    {
        let alert = UIAlertController(title: "Add Resource", message: nil, preferredStyle: .alert)
        alert.addTextField{ (textField) in
            textField.placeholder = "Title"
        }
        
        alert.addTextField{ (textField) in
            textField.placeholder = "URL"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        
        let insertAction = UIAlertAction(title: "Add", style: .default) { (action) in
            if self.myClass.name == "math"
            {
                self.mathTitles.append((alert.textFields![0]).text!)
                self.math.append((alert.textFields![1]).text!)
                self.tableView.reloadData()
            }
            else if self.myClass.name == "english"
            {
                self.englishTitles.append((alert.textFields![0]).text!)
                self.english.append((alert.textFields![1]).text!)
                self.tableView.reloadData()
            }
            else if self.myClass.name == "science"
            {
                self.scienceTitles.append((alert.textFields![0]).text!)
                self.science.append((alert.textFields![1]).text!)
                self.tableView.reloadData()
            }
            else
            {
                self.socialStudiesTitles.append((alert.textFields![0]).text!)
                self.socialStudies.append((alert.textFields![1]).text!)
                self.tableView.reloadData()
            }
            
            
        }
        alert.addAction(insertAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onEditTapped(_ sender: Any) {
        insertNewObject(Any)
    }
    
    
    func returnToPreviousVC()  {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func onXTapped(_ sender: Any) {
        returnToPreviousVC()
    }
    

}
