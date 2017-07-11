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
    
    let math = ["https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-ratios-prop-topic", "https://www.woboe.org/Page/6178", "https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-arithmetic-operations"]
    let mathTitles = ["Ratios, rates, percentages", "Videos for fractions and decimals", "Khan - Arithmetic operations videos"]
    
    let science = ["https://www.youtube.com/watch?v=LEHR8YQNm_Q&list=PLevTym1mJHsTllKYwJdhqgd4bjoZ_wlUZ", "https://www.youtube.com/playlist?list=PLRSIe0MUxDndmkA4PyU-Zw6mNKVVcIXE8", "https://www.youtube.com/playlist?list=PLRSIe0MUxDne1y4uS2w0H7oIH7w_ZZGts", "https://www.youtube.com/playlist?list=PLRSIe0MUxDncRjJ2vYvsXDU0pDnKObrAD", "https://quizlet.com/167626385/scientific-method-flash-cards/" ]
    let scienceTitles = ["YouTube Playlist - Basic Physics & Biology", "Basic Physics Playlist", "Basic Biology Playlist", "Basic Chemistry", "Quizlet - Scientific Method"]
    
    
    let english = ["http://www.corestandards.org/ELA-Literacy/W/6/", "https://quizlet.com/120732897/6th-grade-common-core-vocabulary-flash-cards/"]
    let englishTitles = ["Common Core Standards", "Vocabulary and Concepts"]
    
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
