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
    
    var math = ["http://www.commoncoresheets.com/Operations.php", "http://www.coolmath.com/prealgebra/05-order-of-operations/05-order-of-operations-parenthesis-PEMDAS-04", "https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-arithmetic-operations", "http://www.commoncoresheets.com/Math/Variables/Add-Sub%20within%20100/English/6.pdf", "http://www.shodor.org/interactivate/activities/BarGraph/", "http://www.shodor.org/interactivate/activities/AdjustableSpinner/", "http://www.shodor.org/interactivate/activities/Angles/", "http://www.shodor.org/interactivate/activities/AreaExplorer/", "http://www.shodor.org/interactivate/activities/ArithmeticFour/"]
    var mathTitles = ["Order of Operations Worksheet", "Order of Operations Picture Lesson", "Arithmetic Operations Videos", "Introduction To Variables Worksheet", "Interactive Bar Graph Activity", "Practice with Probability", "Angles Practice Activity", "Practice with Area", "Arithmetic Review Game"]
    
    var science = ["https://sciencebob.com/category/experiments/", "https://www.youtube.com/watch?v=LEHR8YQNm_Q&list=PLevTym1mJHsTllKYwJdhqgd4bjoZ_wlUZ", "https://www.youtube.com/playlist?list=PLRSIe0MUxDndmkA4PyU-Zw6mNKVVcIXE8", "https://www.youtube.com/playlist?list=PLRSIe0MUxDne1y4uS2w0H7oIH7w_ZZGts", "https://www.youtube.com/playlist?list=PLRSIe0MUxDncRjJ2vYvsXDU0pDnKObrAD", "https://quizlet.com/167626385/scientific-method-flash-cards/"]
    var scienceTitles = ["Experiments to Try at Home", "Overview of Physics, Biology, and Chemistry", "Smart Learning For All: Physics Reviews", "Smart Learning For All: Biology Reviews", "Smart Learning For All: Chemistry Reviews", "Basic Concepts of the Scientific Method"]
    
    var english = [" http://www.corestandards.org/ELA-Literacy/W/6/", "http://www.scholastic.com/parents/books-and-reading/book-lists-and-recommendations/ages-11-13", "https://quizlet.com/120732897/6th-grade-common-core-vocabulary-flash-cards/"]
    var englishTitles = ["Common Core English Standards", "Age-Based Reading Recommendations", "English Common Core Flashcards"]
    
    var socialStudies = ["http://www.loc.gov/teachers/classroommaterials/primarysourcesets/wdl/", "http://www.loc.gov/rr/amed/guide/afrillguide.html", "http://www.loc.gov/rr/amed/guide/nesillguide.html", "http://www.loc.gov/rr/european/guide/toc.html", "https://www.pinterest.com/pin/139330182198838884", "https://www.lucidchart.com/pages/concept-map/how-to-make-a-concept-map", "http://www.nova.edu/yoursuccess/forms/outline-notetaking-method.pdf"]
    var socialStudiesTitles = ["World Digital Library: Maps", "Illustrated Guide to Sub-Saharan Africa", "Illustrated Guide to Africa and the Middle East", "Illustrated Guide to European Collections", "Battles of the Civil War Infographic", "A Guide to Concept Maps", "Taking Notes with the Outline Format"]
    
    var url = ""
    
    var subject = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.clearsSelectionOnViewWillAppear = false
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
        else if myClass.name == "science"
        {
        return scienceTitles.count
        }
        else if myClass.name == "socialStudies"
        {
        return socialStudiesTitles.count
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
        else if myClass.name == "science"
        {
            for _ in science
            {
                url = science[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string: url)!)
        }
        else if myClass.name == "socialStudies"
        {
            for _ in socialStudies
            {
                url = socialStudies[indexPath.row]
            }
            UIApplication.shared.openURL(URL(string: url)!)
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
        else if myClass.name == "science"
        {
            cell.textLabel?.text = scienceTitles[indexPath.row]
        }
        else if myClass.name == "socialStudies"
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
    
    func returnToPreviousVC()  {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func onEditTapped(_ sender: Any) {
        insertNewObject(Any)
        
    }
    
    @IBAction func onXTapped(_ sender: Any) {
        returnToPreviousVC()
    }
    
    
}
