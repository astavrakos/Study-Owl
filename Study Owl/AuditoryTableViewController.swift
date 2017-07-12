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
    
    
    let english = ["http://www.corestandards.org/ELA-Literacy/W/6/", "https://quizlet.com/120732897/6th-grade-common-core-vocabulary-flash-cards/", "http://www.audible.com/t2/freetrial6?source_code=GO1GBSH07111690BP&mkwid=s2aJSKgZd_dc&pcrid=205747869292&pmt=b&pkw=%2Bbook%20%2Baudio&cvosrc=ppc.google.%2Bbook%20%2Baudio&cvo_campaign=224869569&cvo_crid=205747869292&Matchtype=b&gclid=Cj0KCQjw7pHLBRDqARIsAFyKPa4hHz18g2PV_grPIXKGWpPYZukdO8MjFdmvWMARfw5Dx2WZSdKdTSYaAua9EALw_wcB"]
    let englishTitles = ["Common Core Standards", "Vocabulary and Concepts", "Find Audio Recordings of Classroom Books"]
    
    let socialStudies = ["https://www.youtube.com/watch?v=KdtgX9ORiW4&list=PLEB3FEDFBFCECD098", "https://www.youtube.com/watch?v=WP_NeirFIkM&index=2&list=PLEB3FEDFBFCECD098", "https://www.youtube.com/watch?v=iMzNPEHNxcc&list=PLEB3FEDFBFCECD098&index=3", "https://www.youtube.com/watch?v=Cg8psGEqLn4", "https://www.youtube.com/watch?v=ancuYECRGN8"]
    let socialStudiesTitles = ["Ancient Egypt", "Greek Gods", "Greek Goddesses", "Colonization in America Audiobook", "US Geography Fun Facts"]
    
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
